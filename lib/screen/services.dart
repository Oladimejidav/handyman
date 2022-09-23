import 'package:flutter/material.dart';

class CarServices extends StatelessWidget {
  const CarServices({Key key}) : super(key: key);
  static const String _title = 'Car Services';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
    );
  }
}
