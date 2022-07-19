import '../../../brlc.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/web3dart.dart';

part 'balance_cubit.freezed.dart';
part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final Credentials credentials;
  final Brlc brlc;
  BalanceCubit({
    required this.credentials,
    required this.brlc,
  }) : super(BalanceState.initial());

  Future<void> balanceOfWallet() async {
    try {
      emit(BalanceState.loading());
      final account = await credentials.extractAddress();
      final currentBalanceBigInt = await brlc.balanceOf(account);
      final currentBalance = currentBalanceBigInt.toInt() / 1000000;
      final symbol = await brlc.symbol();
      emit(BalanceState.success(
        balance: currentBalance,
        symbol: symbol,
      ));
    } catch (_) {
      emit(BalanceState.error());
    }
  }
}
