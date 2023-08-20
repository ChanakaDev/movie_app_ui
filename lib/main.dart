import 'package:flutter/material.dart';

import 'movie_api.dart';
import 'movie_details_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: const Color(0xFFFF5959),
      ),
      home: MovieDetailsPage(testMovie),
    );
  }
}
