import 'package:flutter/material.dart';
import 'splash.dart';
void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return animate();
  }
}
