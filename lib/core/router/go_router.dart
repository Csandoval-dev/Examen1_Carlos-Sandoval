import 'package:flutter/material.dart';
import 'package:flutter_examen_programovil/screens/book_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const BooksScreen(books: [],),
    ),
  ],
);
