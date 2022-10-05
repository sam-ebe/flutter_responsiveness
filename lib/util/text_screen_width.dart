import 'package:flutter/material.dart';

class TextScreenWidth extends StatefulWidget {
  const TextScreenWidth({Key? key}) : super(key: key);

  @override
  State<TextScreenWidth> createState() => _TextScreenWidthState();
}

class _TextScreenWidthState extends State<TextScreenWidth> {
  @override
  Widget build(BuildContext context) {
    String currentWidth =
        'Screen width: ${MediaQuery.of(context).size.width.toString()}';

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        currentWidth,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
