import 'package:flutter/material.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import './transactionDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  // String titleInput;
  // String amountInput;
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Hello World'),
            ),
          ),
          Card(
            elevation: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Transaction Title',
                            border: OutlineInputBorder()),
                        controller: titleInputController,
                        // onChanged: (val) => titleInput = val),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Amount', border: OutlineInputBorder()),
                        controller: amountInputController,
                        // onChanged: (val) => amountInput = val),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        print(titleInputController.text);
                        print(amountInputController.text);
                      },
                      child: Text('Add Transaction'))
                ],
              ),
            ),
          ),
          Column(
              children: transactions.map((transact) {
            return TransactionDetails(
                transactionTitle: transact.title,
                transactionAmount: '\$ ${transact.amount}',
                transactionDate:
                    DateFormat('yyyy-MM-dd').format(transact.date));
          }).toList())
        ],
      ),
    );
  }
}
