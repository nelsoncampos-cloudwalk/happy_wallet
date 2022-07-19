import '../../../brlc.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/web3dart.dart';

part 'transfer_cubit.freezed.dart';
part 'transfer_state.dart';

class TransferCubit extends Cubit<TransferState> {
  final Credentials credentials;
  final Brlc brlc;
  TransferCubit({
    required this.credentials,
    required this.brlc,
  }) : super(TransferState.initial());

  Future<void> transfer({
    required String address,
    required double amount,
  }) async {
    try {
      emit(TransferState.loading());
      final account = await credentials.extractAddress();
      final currentBalanceBigInt = await brlc.balanceOf(account);
      final currentBalance = currentBalanceBigInt.toInt() / 1000000;
      if (currentBalance >= amount) {
        final tx = await brlc.transfer(
          EthereumAddress.fromHex(address),
          BigInt.from(amount),
          credentials: credentials,
        );
        emit(TransferState.success(tx: tx));
      } else {
        emit(TransferState.error(message: 'Insufficient balance'));
      }
    } catch (_) {
      emit(TransferState.error(message: 'Something goes wrong'));
    }
  }
}
