import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/list_screen.dart';
import 'screens/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce UI',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        // Mengatur rute dinamis untuk DetailScreen
        if (settings.name == '/detail') {
          final args = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: args['title']!,
              description: args['description']!,
              imagePath: args['imagePath']!,
            ),
          );
        }
        // Default route
        return MaterialPageRoute(
          builder: (context) {
            if (settings.name == '/list') return ListScreen();
            return LoginScreen();
          },
        );
      },
    );
  }
}
