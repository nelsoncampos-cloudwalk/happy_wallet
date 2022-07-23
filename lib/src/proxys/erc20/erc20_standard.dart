import 'package:web3dart/web3dart.dart';

abstract class Erc20Standard {
  Future<String> name();

  Future<String> symbol();

  Future<double> decimals();

  Future<double> totalSupply();

  Future<double> balanceOf({required String address});

  Future<String> transfer({
    required String from,
    required double amount,
    required Credentials credentials,
  });
}
