// Generated code, do not modify. Run `build_runner build` to re-generate!
// @dart=2.12
import 'package:web3dart/web3dart.dart' as _i1;

final _contractAbi = _i1.ContractAbi.fromJson(
    '[{"type":"event","name":"Approval","inputs":[{"type":"address","name":"owner","internalType":"address","indexed":true},{"type":"address","name":"spender","internalType":"address","indexed":true},{"type":"uint256","name":"value","internalType":"uint256","indexed":false}],"anonymous":false},{"type":"event","name":"Blacklisted","inputs":[{"type":"address","name":"account","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"BlacklisterChanged","inputs":[{"type":"address","name":"newBlacklister","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"Burn","inputs":[{"type":"address","name":"burner","internalType":"address","indexed":true},{"type":"uint256","name":"amount","internalType":"uint256","indexed":false}],"anonymous":false},{"type":"event","name":"MasterMinterChanged","inputs":[{"type":"address","name":"newMasterMinter","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"Mint","inputs":[{"type":"address","name":"minter","internalType":"address","indexed":true},{"type":"address","name":"to","internalType":"address","indexed":true},{"type":"uint256","name":"amount","internalType":"uint256","indexed":false}],"anonymous":false},{"type":"event","name":"MinterConfigured","inputs":[{"type":"address","name":"minter","internalType":"address","indexed":true},{"type":"uint256","name":"mintAllowance","internalType":"uint256","indexed":false}],"anonymous":false},{"type":"event","name":"MinterRemoved","inputs":[{"type":"address","name":"oldMinter","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"OwnershipTransferred","inputs":[{"type":"address","name":"previousOwner","internalType":"address","indexed":true},{"type":"address","name":"newOwner","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"Paused","inputs":[{"type":"address","name":"account","internalType":"address","indexed":false}],"anonymous":false},{"type":"event","name":"PauserChanged","inputs":[{"type":"address","name":"pauser","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"RescuerChanged","inputs":[{"type":"address","name":"newRescuer","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"SelfBlacklisted","inputs":[{"type":"address","name":"account","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"Transfer","inputs":[{"type":"address","name":"from","internalType":"address","indexed":true},{"type":"address","name":"to","internalType":"address","indexed":true},{"type":"uint256","name":"value","internalType":"uint256","indexed":false}],"anonymous":false},{"type":"event","name":"UnBlacklisted","inputs":[{"type":"address","name":"account","internalType":"address","indexed":true}],"anonymous":false},{"type":"event","name":"Unpaused","inputs":[{"type":"address","name":"account","internalType":"address","indexed":false}],"anonymous":false},{"type":"function","stateMutability":"view","outputs":[{"type":"uint256","name":"","internalType":"uint256"}],"name":"allowance","inputs":[{"type":"address","name":"owner","internalType":"address"},{"type":"address","name":"spender","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"approve","inputs":[{"type":"address","name":"spender","internalType":"address"},{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"uint256","name":"","internalType":"uint256"}],"name":"balanceOf","inputs":[{"type":"address","name":"account","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"blacklist","inputs":[{"type":"address","name":"account","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"burn","inputs":[{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"configureMinter","inputs":[{"type":"address","name":"minter","internalType":"address"},{"type":"uint256","name":"mintAllowance","internalType":"uint256"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"uint8","name":"","internalType":"uint8"}],"name":"decimals","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"decreaseAllowance","inputs":[{"type":"address","name":"spender","internalType":"address"},{"type":"uint256","name":"subtractedValue","internalType":"uint256"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"address","name":"","internalType":"address"}],"name":"getBlacklister","inputs":[]},{"type":"function","stateMutability":"view","outputs":[{"type":"address","name":"","internalType":"address"}],"name":"getPauser","inputs":[]},{"type":"function","stateMutability":"view","outputs":[{"type":"address","name":"","internalType":"address"}],"name":"getRescuer","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"increaseAllowance","inputs":[{"type":"address","name":"spender","internalType":"address"},{"type":"uint256","name":"addedValue","internalType":"uint256"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"initialize","inputs":[{"type":"string","name":"name_","internalType":"string"},{"type":"string","name":"symbol_","internalType":"string"},{"type":"uint8","name":"decimals_","internalType":"uint8"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"isBlacklisted","inputs":[{"type":"address","name":"account","internalType":"address"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"isMinter","inputs":[{"type":"address","name":"account","internalType":"address"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"address","name":"","internalType":"address"}],"name":"masterMinter","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"mint","inputs":[{"type":"address","name":"to","internalType":"address"},{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"uint256","name":"","internalType":"uint256"}],"name":"minterAllowance","inputs":[{"type":"address","name":"minter","internalType":"address"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"string","name":"","internalType":"string"}],"name":"name","inputs":[]},{"type":"function","stateMutability":"view","outputs":[{"type":"address","name":"","internalType":"address"}],"name":"owner","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"pause","inputs":[]},{"type":"function","stateMutability":"view","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"paused","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"removeMinter","inputs":[{"type":"address","name":"minter","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"renounceOwnership","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"rescueERC20","inputs":[{"type":"address","name":"tokenContract","internalType":"contract IERC20Upgradeable"},{"type":"address","name":"to","internalType":"address"},{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"selfBlacklist","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"setBlacklister","inputs":[{"type":"address","name":"newBlacklister","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"setPauser","inputs":[{"type":"address","name":"newPauser","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"setRescuer","inputs":[{"type":"address","name":"newRescuer","internalType":"address"}]},{"type":"function","stateMutability":"view","outputs":[{"type":"string","name":"","internalType":"string"}],"name":"symbol","inputs":[]},{"type":"function","stateMutability":"view","outputs":[{"type":"uint256","name":"","internalType":"uint256"}],"name":"totalSupply","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"transfer","inputs":[{"type":"address","name":"recipient","internalType":"address"},{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"nonpayable","outputs":[{"type":"bool","name":"","internalType":"bool"}],"name":"transferFrom","inputs":[{"type":"address","name":"sender","internalType":"address"},{"type":"address","name":"recipient","internalType":"address"},{"type":"uint256","name":"amount","internalType":"uint256"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"transferOwnership","inputs":[{"type":"address","name":"newOwner","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"unBlacklist","inputs":[{"type":"address","name":"account","internalType":"address"}]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"unpause","inputs":[]},{"type":"function","stateMutability":"nonpayable","outputs":[],"name":"updateMasterMinter","inputs":[{"type":"address","name":"newMasterMinter","internalType":"address"}]}]',
    'Brlc');

class Brlc extends _i1.GeneratedContract {
  Brlc(
      {required _i1.EthereumAddress address,
      required _i1.Web3Client client,
      int? chainId})
      : super(_i1.DeployedContract(_contractAbi, address), client, chainId);

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> allowance(
      _i1.EthereumAddress owner, _i1.EthereumAddress spender,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[0];
    assert(checkSignature(function, 'dd62ed3e'));
    final params = [owner, spender];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> approve(_i1.EthereumAddress spender, BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[1];
    assert(checkSignature(function, '095ea7b3'));
    final params = [spender, amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> balanceOf(_i1.EthereumAddress account,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[2];
    assert(checkSignature(function, '70a08231'));
    final params = [account];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> blacklist(_i1.EthereumAddress account,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[3];
    assert(checkSignature(function, 'f9f92be4'));
    final params = [account];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> burn(BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[4];
    assert(checkSignature(function, '42966c68'));
    final params = [amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> configureMinter(
      _i1.EthereumAddress minter, BigInt mintAllowance,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[5];
    assert(checkSignature(function, '4e44d956'));
    final params = [minter, mintAllowance];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> decimals({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[6];
    assert(checkSignature(function, '313ce567'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> decreaseAllowance(
      _i1.EthereumAddress spender, BigInt subtractedValue,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[7];
    assert(checkSignature(function, 'a457c2d7'));
    final params = [spender, subtractedValue];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> getBlacklister({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[8];
    assert(checkSignature(function, 'd3b3f8d4'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> getPauser({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[9];
    assert(checkSignature(function, '7008b548'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> getRescuer({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[10];
    assert(checkSignature(function, 'e4936bba'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> increaseAllowance(
      _i1.EthereumAddress spender, BigInt addedValue,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[11];
    assert(checkSignature(function, '39509351'));
    final params = [spender, addedValue];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> initialize(String name_, String symbol_, BigInt decimals_,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[12];
    assert(checkSignature(function, '1624f6c6'));
    final params = [name_, symbol_, decimals_];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<bool> isBlacklisted(_i1.EthereumAddress account,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[13];
    assert(checkSignature(function, 'fe575a87'));
    final params = [account];
    final response = await read(function, params, atBlock);
    return (response[0] as bool);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<bool> isMinter(_i1.EthereumAddress account,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[14];
    assert(checkSignature(function, 'aa271e1a'));
    final params = [account];
    final response = await read(function, params, atBlock);
    return (response[0] as bool);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> masterMinter({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[15];
    assert(checkSignature(function, '35d99f35'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> mint(_i1.EthereumAddress to, BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[16];
    assert(checkSignature(function, '40c10f19'));
    final params = [to, amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> minterAllowance(_i1.EthereumAddress minter,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[17];
    assert(checkSignature(function, '8a6db9c3'));
    final params = [minter];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<String> name({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[18];
    assert(checkSignature(function, '06fdde03'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as String);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> owner({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[19];
    assert(checkSignature(function, '8da5cb5b'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> pause(
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[20];
    assert(checkSignature(function, '8456cb59'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<bool> paused({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[21];
    assert(checkSignature(function, '5c975abb'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as bool);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> removeMinter(_i1.EthereumAddress minter,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[22];
    assert(checkSignature(function, '3092afd5'));
    final params = [minter];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> renounceOwnership(
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[23];
    assert(checkSignature(function, '715018a6'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> rescueERC20(
      _i1.EthereumAddress tokenContract, _i1.EthereumAddress to, BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[24];
    assert(checkSignature(function, 'b2118a8d'));
    final params = [tokenContract, to, amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> selfBlacklist(
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[25];
    assert(checkSignature(function, 'd2156be2'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> setBlacklister(_i1.EthereumAddress newBlacklister,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[26];
    assert(checkSignature(function, '0f771547'));
    final params = [newBlacklister];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> setPauser(_i1.EthereumAddress newPauser,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[27];
    assert(checkSignature(function, '2d88af4a'));
    final params = [newPauser];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> setRescuer(_i1.EthereumAddress newRescuer,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[28];
    assert(checkSignature(function, 'cd5cecf8'));
    final params = [newRescuer];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<String> symbol({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[29];
    assert(checkSignature(function, '95d89b41'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as String);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> totalSupply({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[30];
    assert(checkSignature(function, '18160ddd'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> transfer(_i1.EthereumAddress recipient, BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[31];
    assert(checkSignature(function, 'a9059cbb'));
    final params = [recipient, amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> transferFrom(
      _i1.EthereumAddress sender, _i1.EthereumAddress recipient, BigInt amount,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[32];
    assert(checkSignature(function, '23b872dd'));
    final params = [sender, recipient, amount];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> transferOwnership(_i1.EthereumAddress newOwner,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[33];
    assert(checkSignature(function, 'f2fde38b'));
    final params = [newOwner];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> unBlacklist(_i1.EthereumAddress account,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[34];
    assert(checkSignature(function, '1a895266'));
    final params = [account];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> unpause(
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[35];
    assert(checkSignature(function, '3f4ba83a'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> updateMasterMinter(_i1.EthereumAddress newMasterMinter,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[36];
    assert(checkSignature(function, 'aa20e1e4'));
    final params = [newMasterMinter];
    return write(credentials, transaction, function, params);
  }

  /// Returns a live stream of all Approval events emitted by this contract.
  Stream<Approval> approvalEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Approval');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Approval(decoded);
    });
  }

  /// Returns a live stream of all Blacklisted events emitted by this contract.
  Stream<Blacklisted> blacklistedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Blacklisted');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Blacklisted(decoded);
    });
  }

  /// Returns a live stream of all BlacklisterChanged events emitted by this contract.
  Stream<BlacklisterChanged> blacklisterChangedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('BlacklisterChanged');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return BlacklisterChanged(decoded);
    });
  }

  /// Returns a live stream of all Burn events emitted by this contract.
  Stream<Burn> burnEvents({_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Burn');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Burn(decoded);
    });
  }

  /// Returns a live stream of all MasterMinterChanged events emitted by this contract.
  Stream<MasterMinterChanged> masterMinterChangedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('MasterMinterChanged');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return MasterMinterChanged(decoded);
    });
  }

  /// Returns a live stream of all Mint events emitted by this contract.
  Stream<Mint> mintEvents({_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Mint');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Mint(decoded);
    });
  }

  /// Returns a live stream of all MinterConfigured events emitted by this contract.
  Stream<MinterConfigured> minterConfiguredEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('MinterConfigured');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return MinterConfigured(decoded);
    });
  }

  /// Returns a live stream of all MinterRemoved events emitted by this contract.
  Stream<MinterRemoved> minterRemovedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('MinterRemoved');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return MinterRemoved(decoded);
    });
  }

  /// Returns a live stream of all OwnershipTransferred events emitted by this contract.
  Stream<OwnershipTransferred> ownershipTransferredEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('OwnershipTransferred');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return OwnershipTransferred(decoded);
    });
  }

  /// Returns a live stream of all Paused events emitted by this contract.
  Stream<Paused> pausedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Paused');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Paused(decoded);
    });
  }

  /// Returns a live stream of all PauserChanged events emitted by this contract.
  Stream<PauserChanged> pauserChangedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('PauserChanged');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return PauserChanged(decoded);
    });
  }

  /// Returns a live stream of all RescuerChanged events emitted by this contract.
  Stream<RescuerChanged> rescuerChangedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('RescuerChanged');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return RescuerChanged(decoded);
    });
  }

  /// Returns a live stream of all SelfBlacklisted events emitted by this contract.
  Stream<SelfBlacklisted> selfBlacklistedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('SelfBlacklisted');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return SelfBlacklisted(decoded);
    });
  }

  /// Returns a live stream of all Transfer events emitted by this contract.
  Stream<Transfer> transferEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Transfer');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Transfer(decoded);
    });
  }

  /// Returns a live stream of all UnBlacklisted events emitted by this contract.
  Stream<UnBlacklisted> unBlacklistedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('UnBlacklisted');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return UnBlacklisted(decoded);
    });
  }

  /// Returns a live stream of all Unpaused events emitted by this contract.
  Stream<Unpaused> unpausedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('Unpaused');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return Unpaused(decoded);
    });
  }
}

class Approval {
  Approval(List<dynamic> response)
      : owner = (response[0] as _i1.EthereumAddress),
        spender = (response[1] as _i1.EthereumAddress),
        value = (response[2] as BigInt);

  final _i1.EthereumAddress owner;

  final _i1.EthereumAddress spender;

  final BigInt value;
}

class Blacklisted {
  Blacklisted(List<dynamic> response)
      : account = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress account;
}

class BlacklisterChanged {
  BlacklisterChanged(List<dynamic> response)
      : newBlacklister = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress newBlacklister;
}

class Burn {
  Burn(List<dynamic> response)
      : burner = (response[0] as _i1.EthereumAddress),
        amount = (response[1] as BigInt);

  final _i1.EthereumAddress burner;

  final BigInt amount;
}

class MasterMinterChanged {
  MasterMinterChanged(List<dynamic> response)
      : newMasterMinter = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress newMasterMinter;
}

class Mint {
  Mint(List<dynamic> response)
      : minter = (response[0] as _i1.EthereumAddress),
        to = (response[1] as _i1.EthereumAddress),
        amount = (response[2] as BigInt);

  final _i1.EthereumAddress minter;

  final _i1.EthereumAddress to;

  final BigInt amount;
}

class MinterConfigured {
  MinterConfigured(List<dynamic> response)
      : minter = (response[0] as _i1.EthereumAddress),
        mintAllowance = (response[1] as BigInt);

  final _i1.EthereumAddress minter;

  final BigInt mintAllowance;
}

class MinterRemoved {
  MinterRemoved(List<dynamic> response)
      : oldMinter = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress oldMinter;
}

class OwnershipTransferred {
  OwnershipTransferred(List<dynamic> response)
      : previousOwner = (response[0] as _i1.EthereumAddress),
        newOwner = (response[1] as _i1.EthereumAddress);

  final _i1.EthereumAddress previousOwner;

  final _i1.EthereumAddress newOwner;
}

class Paused {
  Paused(List<dynamic> response)
      : account = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress account;
}

class PauserChanged {
  PauserChanged(List<dynamic> response)
      : pauser = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress pauser;
}

class RescuerChanged {
  RescuerChanged(List<dynamic> response)
      : newRescuer = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress newRescuer;
}

class SelfBlacklisted {
  SelfBlacklisted(List<dynamic> response)
      : account = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress account;
}

class Transfer {
  Transfer(List<dynamic> response)
      : from = (response[0] as _i1.EthereumAddress),
        to = (response[1] as _i1.EthereumAddress),
        value = (response[2] as BigInt);

  final _i1.EthereumAddress from;

  final _i1.EthereumAddress to;

  final BigInt value;
}

class UnBlacklisted {
  UnBlacklisted(List<dynamic> response)
      : account = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress account;
}

class Unpaused {
  Unpaused(List<dynamic> response)
      : account = (response[0] as _i1.EthereumAddress);

  final _i1.EthereumAddress account;
}
