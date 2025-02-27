import 'package:flutter/material.dart';

class SquareScreen extends StatefulWidget {
  const SquareScreen({super.key});

  @override
  State<SquareScreen> createState() => _SquareScreenState();
}

class _SquareScreenState extends State<SquareScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("SquareScreen");
  }
}
