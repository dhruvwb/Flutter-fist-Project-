import 'package:flutter/material.dart';
// import './components/home.dart';
// import './components/loginForm.dart';
import './TodoList/todoHome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor:
              Colors.white, // Set background color to white
        ),
        home: Scaffold(
          // appBar: AppBar(
          //   elevation: 0,
          //   title: const Text('Login Form'),
          // ),
          // hard: Hard(),

          body: TodoHome(),
        ));
  }
}
