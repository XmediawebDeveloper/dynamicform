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

class Columnwidget extends StatefulWidget {
  const Columnwidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _ColumnwidgetState createState() => _ColumnwidgetState();
}

class _ColumnwidgetState extends State<Columnwidget> {
  @override
  Widget build(BuildContext context) {
    final main_axis = getJsonField(
      widget.json,
      r'''$.prop.main_axis''',
    );

    final axis_main_align = getJsonField(
      widget.json,
      r'''$.prop.axis_main_align''',
    );
    final axis_cross_align = getJsonField(
      widget.json,
      r'''$.prop.axis_cross_align''',
    );
    final start_spacing = getJsonField(
      widget.json,
      r'''$.prop.start_spacing''',
    ).toDouble();
    final end_spacing = getJsonField(
      widget.json,
      r'''$.prop.end_spacing''',
    ).toDouble();
    final item_spacing = getJsonField(
      widget.json,
      r'''$.prop.item_spacing''',
    ).toDouble();
    final type = getJsonField(
      widget.json,
      r'''$.prop.type''',
    );
    double padding_left = getJsonField(
      widget.json,
      r'''$.prop.padding_left''',
    ).toDouble();
    double padding_right = getJsonField(
      widget.json,
      r'''$.prop.padding_right''',
    ).toDouble();
    double padding_top = getJsonField(
      widget.json,
      r'''$.prop.padding_top''',
    ).toDouble();
    double padding_bottom = getJsonField(
      widget.json,
      r'''$.prop.padding_bottom''',
    ).toDouble();

    if (functions.jsonToString(type) == 'scroll') {
      return Builder(builder: (context) {
        final jsonList = getJsonField(
          widget.json,
          r'''$.children''',
        ).toList();
        return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              padding_left,
              padding_top,
              padding_right,
              padding_bottom,
            ),
            child: SingleChildScrollView(
                child: Column(
              mainAxisSize:
                  main_axis == 'max' ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: axis_main_align == 'start' ||
                      axis_main_align == 'top'
                  ? MainAxisAlignment.start
                  : axis_main_align == 'center'
                      ? MainAxisAlignment.center
                      : axis_main_align == 'end' || axis_main_align == 'bottom'
                          ? MainAxisAlignment.end
                          : axis_main_align == 'space_between'
                              ? MainAxisAlignment.spaceBetween
                              : axis_main_align == 'space_around'
                                  ? MainAxisAlignment.spaceAround
                                  : axis_main_align == 'space_even'
                                      ? MainAxisAlignment.spaceEvenly
                                      : MainAxisAlignment.start,
              crossAxisAlignment: axis_cross_align == 'start'
                  ? CrossAxisAlignment.start
                  : axis_cross_align == 'center'
                      ? CrossAxisAlignment.center
                      : axis_cross_align == 'end'
                          ? CrossAxisAlignment.end
                          : axis_cross_align == 'stretch'
                              ? CrossAxisAlignment.stretch
                              : CrossAxisAlignment.start,
              children: List.generate(jsonList.length, (jsonIndex) {
                final jsonItem = jsonList[jsonIndex];
                return AllPageConditionWidget(
                  json: jsonItem,
                );
              })
                  .divide(SizedBox(height: item_spacing))
                  .addToStart(SizedBox(height: start_spacing))
                  .addToEnd(SizedBox(height: end_spacing)),
            )));
      });
    } else {
      return Builder(builder: (context) {
        final jsonList = getJsonField(
          widget.json,
          r'''$.children''',
        ).toList();
        return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              padding_left,
              padding_top,
              padding_right,
              padding_bottom,
            ),
            child: Column(
              mainAxisSize:
                  main_axis == 'max' ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: axis_main_align == 'start' ||
                      axis_main_align == 'top'
                  ? MainAxisAlignment.start
                  : axis_main_align == 'center'
                      ? MainAxisAlignment.center
                      : axis_main_align == 'end' || axis_main_align == 'bottom'
                          ? MainAxisAlignment.end
                          : axis_main_align == 'space_between'
                              ? MainAxisAlignment.spaceBetween
                              : axis_main_align == 'space_around'
                                  ? MainAxisAlignment.spaceAround
                                  : axis_main_align == 'space_even'
                                      ? MainAxisAlignment.spaceEvenly
                                      : MainAxisAlignment.start,
              crossAxisAlignment: axis_cross_align == 'start'
                  ? CrossAxisAlignment.start
                  : axis_cross_align == 'center'
                      ? CrossAxisAlignment.center
                      : axis_cross_align == 'end'
                          ? CrossAxisAlignment.end
                          : axis_cross_align == 'stretch'
                              ? CrossAxisAlignment.stretch
                              : CrossAxisAlignment.start,
              children: List.generate(jsonList.length, (jsonIndex) {
                final jsonItem = jsonList[jsonIndex];
                return AllPageConditionWidget(
                  json: jsonItem,
                );
              })
                  .divide(SizedBox(height: item_spacing))
                  .addToStart(SizedBox(height: start_spacing))
                  .addToEnd(SizedBox(height: end_spacing)),
            ));
      });
    }
  }
}
