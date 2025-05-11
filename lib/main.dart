import 'package:dorel/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: Dorel()));
}

class Dorel extends StatelessWidget {
  const Dorel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Dorel', home: const Home(title: 'Dorel'));
  }
}

