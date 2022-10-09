import 'package:flutter/material.dart';
import '../transaction.dart';

class Homepage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: '1', title: 'NEw Laptop', amount: 100, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        title: Center(child: Text('Pradeep')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            color: Colors.pink.shade200,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'C H A R T',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
            ),
          ),
          Column(
            children: transaction.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(tx.amount.toString()),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Text(tx.title),
                          SizedBox(
                            height: 10,
                          ),
                          Text(tx.date.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
