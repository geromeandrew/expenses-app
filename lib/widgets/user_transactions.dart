import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/new_transaction.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';

import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransactions = [
    Transactions(
      id: 't1',
      title: 'Marshall Amp',
      amount: 10000.99,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Delay Pedal',
      amount: 5000.99,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't3',
      title: 'Fuzz Pedal',
      amount: 4000.99,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transactions(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
