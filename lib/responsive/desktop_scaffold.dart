import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/constants.dart';
import 'package:flutter_responsiveness/util/custom_tile.dart';
import 'package:flutter_responsiveness/util/text_screen_width.dart';
import 'package:flutter_responsiveness/util/title_text.dart';
import 'package:flutter_responsiveness/util/top_box.dart';

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
        Expanded(
          flex: 2,
          child: Column(children: [
            TextScreenWidth(),
            TitleText(title: 'Featured content on Desktop'),
            // 4 boxes on the top
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  primary:
                      false, // Error fixed : ScrollController is currently attached to more than one ScrollPosition.
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
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
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.grey[800],
            ))
          ],
        ))
      ]),
    );
  }
}
