import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/models/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
      Expense(
        title: 'Cinema',
        amount: 10,
        date: DateTime.now(),
        category: Category.leisure)  
  ];
  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('The chart'), 
      Expanded(child: ExpensesList(expenses: _registeredExpenses))],
    ));
  }
}
