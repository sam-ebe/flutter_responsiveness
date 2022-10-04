import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  const CustomTile({Key? key}) : super(key: key);

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[400],
        height: 80,
      ),
    );
  }
}
