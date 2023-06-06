import 'package:expensetrackerdemotest/transaction_list.dart';
import 'package:flutter/material.dart';

import 'Model/transaction.dart';
import 'new_transaction.dart';

class usertransaction extends StatefulWidget {
  const usertransaction({Key? key}) : super(key: key);

  @override
  State<usertransaction> createState() => _usertransactionState();
}

class _usertransactionState extends State<usertransaction> {
  List<Transaction> _usertransactions=[
    Transaction(id: '10801', name: 'Cricket Bat', amount:100, dateTime: DateTime.now()),
    Transaction(id: '10802', name: 'Cricket ball', amount: 200, dateTime: DateTime.now())];

void addTransaction(String names,double amount)
{
  final addTx=Transaction(id: '10803', name:names , amount: amount, dateTime: DateTime.now());
  setState(() {
_usertransactions.add(addTx);
  });

}



  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        newTransaction(addTransaction),
        transactionlist(_usertransactions)
      ],
    );
  }
}
