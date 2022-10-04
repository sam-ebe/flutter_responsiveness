import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/responsive/desktop_scaffold.dart';
import 'package:flutter_responsiveness/responsive/mobile_scaffold.dart';
import 'package:flutter_responsiveness/responsive/responsive_layout.dart';
import 'package:flutter_responsiveness/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsiveness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[800],
        backgroundColor: Colors.grey[200],
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
