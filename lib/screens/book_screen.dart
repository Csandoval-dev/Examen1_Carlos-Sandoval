import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/models/book.dart';
import 'package:flutter_examen_programovil/screens/bookdetailsreen.dart';
import 'package:flutter_examen_programovil/widgets/book_list_screen.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Book> books = _loadBooksFromJson(); // Cargar libros desde el archivo JSON

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Libros'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookListItem(
            book: books[index],
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookDetailScreen(book: books[index]),
              ));
            },
          );
        },
      ),
    );
  }

  List<Book> _loadBooksFromJson() {
    try {
      String jsonString = File('data.json').readAsStringSync();
      List<dynamic> jsonList = json.decode(jsonString)['data'];
      return jsonList.map((json) => Book.fromJson(json)).toList();
    } catch (e) {
      print('Error cargando libros: $e');
      return []; // En caso de error, devuelve una lista vacía
    }
  }
}
