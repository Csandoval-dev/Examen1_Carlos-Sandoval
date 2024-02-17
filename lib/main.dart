import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/models/book.dart';
import 'package:flutter_examen_programovil/screens/book_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen Flutter',
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<Book> books;

  @override
  void initState() {
    super.initState();
    loadBooks();
  }

  void loadBooks() {
    try {
      String jsonString = File('data.json').readAsStringSync();
      List<dynamic> jsonList = json.decode(jsonString)['data'];
      books = jsonList.map((json) => Book.fromJson(json)).toList();
    } catch (e) {
      print('Error cargando libros: $e');
      // En caso de error, inicializamos la lista de libros como vacía
      books = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: BooksScreen(books: books),
    );
  }
}
