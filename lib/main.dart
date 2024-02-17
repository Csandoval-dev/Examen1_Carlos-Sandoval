import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/screens/book_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen Flutter',
      home: BooksScreen(),
    );
  }
}
