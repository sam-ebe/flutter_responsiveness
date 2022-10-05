import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/constants.dart';
import 'package:flutter_responsiveness/util/custom_tile.dart';
import 'package:flutter_responsiveness/util/title_text.dart';
import 'package:flutter_responsiveness/util/top_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: myDrawer,
      body: Column(children: [
        TitleText(title: 'Featured content on Mobile'),
        // 4 boxes on the top
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              primary:
                  false, // Error fixed : ScrollController is currently attached to more than one ScrollPosition.
              itemCount: 4,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return TopBox();
              },
            ),
          ),
        ),
        SizedBox(height: 12),
        TitleText(title: 'Recommended for you'),
        // tiles on the bottom
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return CustomTile();
            },
          ),
        )
      ]),
    );
  }
}
