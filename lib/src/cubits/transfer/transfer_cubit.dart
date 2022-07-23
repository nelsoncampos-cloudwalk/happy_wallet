import '../../proxys/erc20/brlc/brlc_proxy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/web3dart.dart';

part 'transfer_cubit.freezed.dart';
part 'transfer_state.dart';

class TransferCubit extends Cubit<TransferState> {
  final Credentials credentials;
  final BrlcProxy brlcProxy;

  TransferCubit({
    required this.credentials,
    required this.brlcProxy,
  }) : super(TransferState.initial());

  Future<void> transfer({
    required String address,
    required double amount,
  }) async {
    try {
      emit(TransferState.loading());

      final account = await credentials.extractAddress();
      final currentBalanceBigInt = await brlcProxy.balanceOf(
        address: account.hex,
      );

      final currentBalance = currentBalanceBigInt.toInt() / 1000000;
      if (currentBalance >= amount) {
        final tx = await brlcProxy.transfer(
          from: address,
          credentials: credentials,
          amount: amount,
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
