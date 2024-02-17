import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/models/book.dart';

class BookListItem extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const BookListItem({
    required this.book,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Text(book.publisher),
      onTap: onTap,
    );
  }
}
