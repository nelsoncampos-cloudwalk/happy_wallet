import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/credentials.dart';

import '../../adapters/storage/flutter_secure_storage_adapter.dart';
import '../../adapters/storage/storage_client.dart';

part 'wallets_cubit.freezed.dart';
part 'wallets_state.dart';

class WalletsCubit extends Cubit<WalletsState> {
  WalletsCubit() : super(WalletsState.initial());
  static const String _walletsStorageKey = 'wallets';
  final StorageClient storage = FlutterSecureStorageAdapter();

  Future<List<dynamic>> verifySavedWallets() async {
    final walletsFromStorage = await storage.read(key: _walletsStorageKey);
    if (walletsFromStorage == null) return [];
    return jsonDecode(walletsFromStorage);
  }

  void createNewWallet() async {
    emit(WalletsState.loading());
    final wallets = await verifySavedWallets();
    final rng = Random.secure();
    final cred = EthPrivateKey.createRandom(rng);
    wallets.add(cred.privateKeyInt.toString());
    storage.write(key: _walletsStorageKey, value: jsonEncode(wallets));
    await loadWallet();
  }

  void importWallet({required String privateKey}) async {
    emit(WalletsState.loading());
    final wallets = await verifySavedWallets();
    final cred = EthPrivateKey.fromHex(privateKey);
    wallets.add(cred.privateKeyInt.toString());
    storage.write(key: _walletsStorageKey, value: jsonEncode(wallets));
    await loadWallet();
  }

  Future<void> loadWallet() async {
    emit(WalletsState.loading());
    final walletsStr = await verifySavedWallets();
    final wallets =
        walletsStr.map((privateStr) => BigInt.parse(privateStr)).toList();
    final List<Credentials> credentials =
        wallets.map((wallet) => EthPrivateKey.fromInt(wallet)).toList();
    emit(WalletsState.loaded(wallets: credentials));
  }
}
