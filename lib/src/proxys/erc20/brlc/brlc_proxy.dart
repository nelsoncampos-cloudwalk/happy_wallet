import 'service/brlc.g.dart';
import '../erc20_standard.dart';
import 'package:web3dart/web3dart.dart';

class BrlcProxy implements Erc20Standard {
  static const _bigIntDivisor = 100000;
  final Brlc brlc;

  BrlcProxy({required this.brlc});

  @override
  Future<double> balanceOf({required String address}) async {
    final _address = EthereumAddress.fromHex(address);
    final brlcBigInt = await brlc.balanceOf(_address);
    return brlcBigInt.toInt() / _bigIntDivisor;
  }

  @override
  Future<String> transfer({
    required String from,
    required double amount,
    required Credentials credentials,
  }) async {
    final address = EthereumAddress.fromHex(from);
    final bigIntAmount = BigInt.from(amount);
    return brlc.transfer(
      address,
      bigIntAmount,
      credentials: credentials,
    );
  }

  @override
  Future<double> decimals() async {
    final decimals = await brlc.decimals();
    return decimals.toInt() / _bigIntDivisor;
  }

  @override
  Future<String> name() async {
    return brlc.name();
  }

  @override
  Future<String> symbol() {
    return brlc.symbol();
  }

  @override
  Future<double> totalSupply() async {
    final totalSuply = await brlc.totalSupply();
    return totalSuply.toInt() / _bigIntDivisor;
  }
}
