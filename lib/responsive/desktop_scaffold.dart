import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(children: [
        // open drawer
        myDrawer,
        //rest of the body
        Container()
      ]),
    );
  }
}
