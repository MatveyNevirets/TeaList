import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tea_list/features/intro/presentation/intro_screen.dart';
import 'package:tea_list/features/main_page/main_page.dart';

class TeaApplication extends StatelessWidget {
  TeaApplication({super.key});

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state) => IntroScreen()),
      GoRoute(path: "/main_page", builder: (context, state) => MainPage()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 4,
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 148, 131, 95),
          unselectedItemColor: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromARGB(255, 14, 79, 30),
        ),
      ),
    );
  }
}
