// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/custom_functions.dart' as functions;
import '/components/all_page_condition_widget.dart';
import 'package:provider/provider.dart';

class Listviewwidget extends StatefulWidget {
  const Listviewwidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _ListviewwidgetState createState() => _ListviewwidgetState();
}

class _ListviewwidgetState extends State<Listviewwidget> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.prop.type''',
            )) ==
            'primary') {
          return Builder(
            builder: (context) {
              final jsonList = getJsonField(
                widget.json,
                r'''$.children''',
              ).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: jsonList.length,
                itemBuilder: (context, jsonListIndex) {
                  final jsonListItem = jsonList[jsonListIndex];
                  return Container(
                      width: 100, height: 100, color: Colors.green);
                },
              );
            },
          );
        } else {
          return ListView(
            padding: EdgeInsets.zero,
            primary: false,
            scrollDirection: Axis.vertical,
            children: [],
          );
        }
      },
    );
  }
}
