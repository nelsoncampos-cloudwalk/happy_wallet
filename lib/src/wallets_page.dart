import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web3dart/web3dart.dart';

import 'cubits/wallets/wallets_cubit.dart';
import 'home_page.dart';

class WalletsPage extends StatefulWidget {
  const WalletsPage({Key? key}) : super(key: key);

  @override
  State<WalletsPage> createState() => _WalletsPageState();
}

class _WalletsPageState extends State<WalletsPage> {
  final cubit = WalletsCubit();

  @override
  void initState() {
    cubit.loadWallet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Happy Wallet 😁",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<WalletsCubit, WalletsState>(
              bloc: cubit,
              builder: (context, state) {
                return Flexible(
                  child: ListView.builder(
                    itemCount: state.maybeWhen(
                      loaded: (wallets) => wallets.length,
                      orElse: () => 0,
                    ),
                    itemBuilder: (context, index) {
                      return state.maybeWhen(
                        loaded: (wallets) => _Wallet(
                          index: index,
                          credentials: wallets[index],
                        ),
                        orElse: () => SizedBox(),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(CupertinoIcons.arrow_swap),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () {
              cubit.createNewWallet();
            },
            child: Icon(CupertinoIcons.add),
          ),
        ],
      ),
    );
  }
}

class _Wallet extends StatefulWidget {
  final Credentials credentials;
  final int index;
  const _Wallet({
    Key? key,
    required this.credentials,
    required this.index,
  }) : super(key: key);

  @override
  State<_Wallet> createState() => _WalletState();
}

class _WalletState extends State<_Wallet> {
  EthereumAddress? ethAddress;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ethAddress = await widget.credentials.extractAddress();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (ethAddress != null) {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (_) => Home(
                credentials: widget.credentials,
                ethereumAddress: ethAddress!,
                walletNumber: widget.index,
              ),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                ethAddress?.hex ?? 'loading...',
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
