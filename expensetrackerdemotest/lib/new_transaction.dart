import 'package:flutter/material.dart';

class newTransaction extends StatelessWidget {
  Function addTx;
  newTransaction(this.addTx);
  final titleController=TextEditingController();

  final amountController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
              controller: titleController,
              //onChanged: (value)=>titleInput,
              decoration: InputDecoration(labelText: 'Title')),
          TextField(
              controller: amountController,
              // onChanged: (value) => amountInput=value;},
              decoration: InputDecoration(labelText: 'Amount')),
          TextButton(onPressed: (){
            addTx(titleController.text,double.parse(amountController.text));



          }, child: Text('Add transaction',style: TextStyle( color: Colors.deepPurple),)),



        ],),
      padding: EdgeInsets.all(10),


    ));
  }
}
