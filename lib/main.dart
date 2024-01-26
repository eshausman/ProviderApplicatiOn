import 'package:flutter/material.dart';
import 'package:flutterapplication/controller/provider/home_provider.dart';
import 'package:flutterapplication/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}