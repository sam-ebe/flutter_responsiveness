import 'package:flutter/material.dart';

class TopBox extends StatelessWidget {
  const TopBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[700],
      ),
    );
  }
}
