import 'package:flutter/material.dart';
import 'package:servicios_modelos/theme.dart';
import 'package:servicios_modelos/ui/user/user_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme ,
      title: 'Material App',
      home: UserView()
    );
  }
}