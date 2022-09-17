import 'package:flutter/material.dart';

import './user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountInput,
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text(
              'Add Transaction',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              addTransaction(titleInput.text, double.parse(amountInput.text));
            },
            color: Colors.teal,
          ),
        ]),
      ),
    );
  }
}
