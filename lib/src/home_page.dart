import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_wallet/src/proxys/erc20/brlc/brlc_proxy.dart';
import 'package:happy_wallet/src/proxys/erc20/brlc/service/brlc.g.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

import 'cubits/balance/balance_cubit.dart';
import 'transfer_page.dart';

class Home extends StatefulWidget {
  final Credentials credentials;
  final EthereumAddress ethereumAddress;
  final int walletNumber;
  const Home({
    Key? key,
    required this.credentials,
    required this.ethereumAddress,
    required this.walletNumber,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final Brlc brlc;
  late final BrlcProxy brlcProxy;
  late final BalanceCubit cubit;

  @override
  void initState() {
    brlc = Brlc(
      address: EthereumAddress.fromHex(
        '0xA9a55a81a4C085EC0C31585Aed4cFB09D78dfD53',
      ),
      client: Web3Client('https://rpc.mainnet.cloudwalk.io', Client()),
      chainId: 2009,
    );

    brlcProxy = BrlcProxy(brlc: brlc);

    cubit = BalanceCubit(
      credentials: widget.credentials,
      brlcProxy: brlcProxy,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await cubit.balanceOfWallet();
    });

    super.initState();
  }

  String get address => widget.ethereumAddress.hex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Happy Wallet ${widget.walletNumber}",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          _WalletPill(address: address),
          Flexible(
            child: Center(
              child: BlocBuilder<BalanceCubit, BalanceState>(
                bloc: cubit,
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return Text(
                        'Initializing...',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                        ),
                      );
                    },
                    loading: () {
                      return Text(
                        'Loading...',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                        ),
                      );
                    },
                    success: (balance, symbol) {
                      return Text(
                        '$symbol ${balance.toString()}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                        ),
                      );
                    },
                    error: () {
                      return Text(
                        'Error 😔',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () async {
              await cubit.balanceOfWallet();
            },
            child: Icon(CupertinoIcons.arrow_counterclockwise),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () async {
              await showCupertinoModalBottomSheet(
                context: context,
                builder: (_) {
                  return TransferPage(
                    credentials: widget.credentials,
                    brlcProxy: brlcProxy,
                  );
                },
              );
              cubit.balanceOfWallet();
            },
            child: Icon(CupertinoIcons.arrow_up),
          ),
        ],
      ),
    );
  }
}

class _WalletPill extends StatelessWidget {
  final String address;

  const _WalletPill({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: address));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: Duration(milliseconds: 500),
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Copied to clipboard',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade200,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              address.replaceRange(6, address.length - 4, '...'),
            ),
            SizedBox(width: 8),
            Icon(CupertinoIcons.square_on_square)
          ],
        ),
      ),
    );
  }
}
