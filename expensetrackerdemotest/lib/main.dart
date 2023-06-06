import 'package:expensetrackerdemotest/new_transaction.dart';
import 'package:expensetrackerdemotest/transaction_list.dart';
import 'package:expensetrackerdemotest/user_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Model/transaction.dart';

void main()
{
  runApp(MaterialApp(home: Main()));
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EXPENSE TRACKER'),),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [usertransaction()

              ],
          ),
        ),
      ),
    );
  }
}





















