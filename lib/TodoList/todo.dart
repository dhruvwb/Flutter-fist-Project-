// import 'package:flutter/material.dart';

class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: '1', todoText: 'Buy milk', isDone: true),
      Todo(id: '2', todoText: 'Walk the dog', isDone: true),
      Todo(id: '3', todoText: 'Do Homework', isDone: true),
      Todo(id: '4', todoText: 'Play Games', isDone: false),
    ];
  }
}
