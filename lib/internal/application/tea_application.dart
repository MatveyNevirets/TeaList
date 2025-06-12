import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tea_list/features/details/presentation/details_screen.dart';
import 'package:tea_list/features/favorite/presentation/favorite_screen.dart';
import 'package:tea_list/features/home/presentation/home_screen.dart';
import 'package:tea_list/features/intro/presentation/intro_screen.dart';
import 'package:tea_list/features/notes/presentation/notes_screen.dart';

class TeaApplication extends StatelessWidget {
  TeaApplication({super.key});

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => IntroScreen()),
      GoRoute(path: "/home", builder: (context, state) => HomeScreen()),
      GoRoute(path: "/favorite", builder: (context, state) => FavoriteScreen()),
      GoRoute(path: "/notes", builder: (context, state) => NotesScreen()),
      GoRoute(path: "/details", builder: (context, state) => DetailsScreen()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
