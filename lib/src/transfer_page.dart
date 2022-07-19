import '../../../brlc.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:web3dart/web3dart.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../brlc.g.dart';
import 'cubits/transfer/transfer_cubit.dart';

class TransferPage extends StatefulWidget {
  final Credentials credentials;
  final Brlc brlc;
  const TransferPage({
    Key? key,
    required this.brlc,
    required this.credentials,
  }) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

final valueController = TextEditingController();
final addressController = TextEditingController();

class _TransferPageState extends State<TransferPage> {
  late final TransferCubit cubit;

  @override
  void initState() {
    cubit = TransferCubit(
      credentials: widget.credentials,
      brlc: widget.brlc,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TransferCubit, TransferState>(
        bloc: cubit,
        builder: (context, state) {
          return state.when(
            initial: () => _Inital(cubit: cubit),
            loading: () => Center(child: CircularProgressIndicator()),
            success: (tx) => _Success(tx: tx),
            error: (message) => _Error(),
          );
        },
      ),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: _Title(text: 'Error ❌ '),
        ),
      ],
    );
  }
}

class _Success extends StatelessWidget {
  final String tx;
  const _Success({Key? key, required this.tx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _Title(text: 'Approved ✅ '),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              showCupertinoModalBottomSheet(
                enableDrag: false,
                context: context,
                builder: (_) => _WebView(tx: tx),
              );
            },
            child: Text(
              'Open explorer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Inital extends StatelessWidget {
  final TransferCubit cubit;
  const _Inital({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _Title(text: 'Send 💸'),
        _Receiver(),
        SizedBox(height: 16),
        _Value(),
        _SendButton(cubit: cubit),
        const SizedBox(height: 48),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String text;
  const _Title({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(36),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 36,
        ),
      ),
    );
  }
}

class _Value extends StatelessWidget {
  const _Value({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          controller: valueController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            label: Text(
              'Value',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Receiver extends StatelessWidget {
  const _Receiver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          controller: addressController,
          decoration: InputDecoration(
            label: Text(
              'Address',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  final TransferCubit cubit;
  const _SendButton({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () async {
            await cubit.transfer(
              address: addressController.text,
              amount: double.parse(valueController.text),
            );
          },
          child: Icon(CupertinoIcons.checkmark_alt),
        ),
      ),
    );
  }
}

class _WebView extends StatelessWidget {
  final String tx;
  const _WebView({Key? key, required this.tx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                CupertinoIcons.xmark,
                color: Colors.white,
              ),
            ),
          ),
          Flexible(
            child: WebView(
              initialUrl: 'https://explorer.mainnet.cloudwalk.io/tx/$tx',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ],
      ),
    );
  }
}
