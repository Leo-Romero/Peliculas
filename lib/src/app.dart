import 'package:flutter/material.dart';
import 'package:peliculas/src/screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
    );
  }
}
