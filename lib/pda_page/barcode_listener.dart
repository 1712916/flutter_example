import 'package:flutter/material.dart';
import 'package:flutter_barcode_listener/flutter_barcode_listener.dart';

class BarcodeListenerPage extends StatefulWidget {
  const BarcodeListenerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeListenerPage> createState() => _BarcodeListenerPageState();
}

class _BarcodeListenerPageState extends State<BarcodeListenerPage> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BarcodeKeyboardListener(
            child: Text('Code: \n$code'),
            onBarcodeScanned: (code) {
              this.code = code;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
