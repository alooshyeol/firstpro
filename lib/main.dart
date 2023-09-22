import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(ola());
}

class ola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            color: const Color.fromARGB(255, 224, 199, 122), child: Home()));
  }
}
