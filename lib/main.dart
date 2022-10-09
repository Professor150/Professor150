import 'package:flutter/material.dart';
import 'package:new_app/pages/homepage.dart';

void main() => runApp(new_app());

class new_app extends StatelessWidget {
  const new_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
