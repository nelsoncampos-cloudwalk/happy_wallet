import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happy_wallet/src/proxys/erc20/brlc/brlc_proxy.dart';
import 'package:web3dart/web3dart.dart';

part 'balance_cubit.freezed.dart';
part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final Credentials credentials;
  final BrlcProxy brlcProxy;
  BalanceCubit({
    required this.credentials,
    required this.brlcProxy,
  }) : super(BalanceState.initial());

  Future<void> balanceOfWallet() async {
    try {
      emit(BalanceState.loading());
      final account = await credentials.extractAddress();
      final currentBalance = await brlcProxy.balanceOf(
        address: account.hex,
      );
      final symbol = await brlcProxy.symbol();
      emit(BalanceState.success(
        balance: currentBalance,
        symbol: symbol,
      ));
    } catch (_) {
      emit(BalanceState.error());
    }
  }
}
