import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/home_screen.dart';
import 'package:provider_app/provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (ctx) => CounterProvider(),
      child: const MaterialApp(home: HomeScreen(),),);
  }
}
