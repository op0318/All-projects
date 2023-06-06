import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Model/transaction.dart';
import './user_transaction.dart';

class transactionlist extends StatelessWidget {
List<Transaction> transaction;

transactionlist(this.transaction);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transaction.map((tx) {
          return Card(
            child: Row(
              children: [Container(
                  child: Text('${tx.amount}',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple
                  )),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.deepPurple)),
                  padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 20)),



                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(tx.name,style:  TextStyle(fontWeight: FontWeight.bold,fontSize:19, )),
                    Text(DateFormat.yMd().format(tx.dateTime),style: TextStyle(color: Colors.grey),),

                  ],
                )],
            ),
          );


        }).toList(),

      ],
    );
  }
}
