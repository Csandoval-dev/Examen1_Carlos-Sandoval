
import 'package:flutter_examen_programovil/screens/book_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return BooksScreen();
      }
    ),
  ],
);