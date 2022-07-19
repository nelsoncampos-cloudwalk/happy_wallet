import 'src/wallets_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HappyWallet());
}

class HappyWallet extends StatelessWidget {
  const HappyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WalletsPage(),
    );
  }
}
