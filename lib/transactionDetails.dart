import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  final String transactionTitle;
  final String transactionAmount;
  final String transactionDate;

  TransactionDetails({
    @required this.transactionTitle,
    @required this.transactionAmount,
    @required this.transactionDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                child: Text(transactionAmount,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.purple))),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(transactionTitle,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text(transactionDate,
                  style: TextStyle(fontSize: 15, color: Colors.grey))
            ]),
          ],
        ));
  }
}
