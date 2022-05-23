import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(child: TextField()),
        Card(child: TextField()),
        ElevatedButton(onPressed: () {}, child: Text('Add Transacction'))
      ],
    ));
  }
}
