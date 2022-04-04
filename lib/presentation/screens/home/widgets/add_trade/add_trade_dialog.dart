import 'package:flutter/material.dart';

class AddTradeDialog extends StatelessWidget {
  const AddTradeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      )),
      body: Container(
        color: Colors.red,
        child: const Center(child: Text("AddDialog")),
      ),
    );
  }
}
