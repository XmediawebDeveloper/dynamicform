// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
class AllConditionWidget extends StatefulWidget {
  const AllConditionWidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _AllConditionWidgetState createState() => _AllConditionWidgetState();
}

class _AllConditionWidgetState extends State<AllConditionWidget> {
  @override
  Widget build(BuildContext context) {
    print(getJsonField(
      widget.json,
      r'''$.type''',
    ));
    return Builder(
      builder: (context) {
        if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'column') {
          return custom_widgets.Columnwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'row') {
          return custom_widgets.Rowwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'listview') {
          return custom_widgets.Listviewwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'container') {
          print('container');
          return custom_widgets.Containerwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'text') {
          print('text');
          return custom_widgets.Textwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            value: getJsonField(
              widget.json,
              r'''$.attr.value''',
            ).toString(),
            json: getJsonField(
              widget.json,
              r'''$.attr.prop''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'textfield') {
          print('input');
          return custom_widgets.Inputwidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'choicechips') {
          print('choicechips');
          return custom_widgets.ChoiceChipswidget(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            json: getJsonField(
              widget.json,
              r'''$.attr''',
            ),
          );
        } else {
          return Text(
            'No Widget\n',
            style: FlutterFlowTheme.of(context).bodyMedium,
          );
        }
      },
    );
  }
}
