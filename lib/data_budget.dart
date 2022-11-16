import 'package:counter_7/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';

import 'drawer.dart';

class MyBudgetPage extends StatefulWidget {
  const MyBudgetPage({super.key});

  @override
  State<MyBudgetPage> createState() => _MyBudgetPageState();
}

class _MyBudgetPageState extends State<MyBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Budget"),
      ),
      drawer: const MyDrawer(),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
              children: daftarBudget.map((Budget budget) {
            return Card(
              child: ListTile(
                title: Text(budget.judul, style: const TextStyle(fontSize: 20),),
                subtitle: Text(budget.nominal.toString()),
                trailing: Text(budget.jenisBudget),
              ),
            );
          }).toList()),
        ),
      ),
    );
  }
}
