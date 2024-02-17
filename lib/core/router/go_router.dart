// routes.dart
import 'package:go_router/go_router.dart';
import 'package:flutter_examen_programovil/screens/books_screen.dart';
import 'package:flutter_examen_programovil/screens/book_detail_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) => MaterialPage(child: Text('Error: ${state.error}')),
  routes: [
    BooksScreen.router(),
    BookDetailScreen.router(),
  ],
);
