import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idenfit_my_first_app/theme/darkTheme.dart';
import 'package:idenfit_my_first_app/theme/lightTheme.dart';
import 'package:idenfit_my_first_app/pages/splashScreen.dart';

void main() {
  runApp(
      const ProviderScope(
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const splashScreen()
    );
  }
}



