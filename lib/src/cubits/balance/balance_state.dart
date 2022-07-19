part of 'balance_cubit.dart';

@freezed
class BalanceState with _$BalanceState {
  const factory BalanceState.initial() = _Initial;
  const factory BalanceState.loading() = _Loading;
  const factory BalanceState.success({
    required String symbol,
    required double balance,
  }) = _Success;
  const factory BalanceState.error() = _Error;
}
