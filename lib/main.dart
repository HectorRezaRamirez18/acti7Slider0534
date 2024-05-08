import 'package:flutter/material.dart';
import 'package:act7slider0534/home_page.dart';

void main() => runApp(const Myapptabbar());

class Myapptabbar extends StatelessWidget {
  const Myapptabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //j
      home: HomePage(),
    );
  }
}
