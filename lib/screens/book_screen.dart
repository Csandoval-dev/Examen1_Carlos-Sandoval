import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/models/book.dart';

import 'package:flutter_examen_programovil/widgets/book_list_screen.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key, required List<Book> books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Aquí cargarías la lista de libros desde tu JSON
    final List<Book> books = []; // Reemplaza esto con tu lógica para cargar libros desde JSON

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
              // Aquí deberías navegar a la pantalla de detalles del libro
            },
          );
        },
      ),
    );
  }
}
