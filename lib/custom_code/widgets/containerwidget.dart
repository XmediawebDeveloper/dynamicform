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

class Containerwidget extends StatefulWidget {
  const Containerwidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _ContainerwidgetState createState() => _ContainerwidgetState();
}

class _ContainerwidgetState extends State<Containerwidget> {
  @override
  Widget build(BuildContext context) {
    final width_type = getJsonField(
      widget.json,
      r'''$.prop.width_type''',
    );
    final height_type = getJsonField(
      widget.json,
      r'''$.prop.height_type''',
    );

    final width = getJsonField(
      widget.json,
      r'''$.prop.width''',
    ).toDouble();

    final height = getJsonField(
      widget.json,
      r'''$.prop.height''',
    ).toDouble();
    final fill_color = getJsonField(
      widget.json,
      r'''$.prop.fill_color''',
    );
    final border_radius = getJsonField(
      widget.json,
      r'''$.prop.border_radius''',
    ).toDouble();
    final border_color = getJsonField(
      widget.json,
      r'''$.prop.border_color''',
    );
    final border_width = getJsonField(
      widget.json,
      r'''$.prop.border_width''',
    ).toDouble();
    final type = getJsonField(
      widget.json,
      r'''$.prop.type''',
    );
    final padding_left = getJsonField(
      widget.json,
      r'''$.prop.padding_left''',
    ).toDouble();
    final padding_right = getJsonField(
      widget.json,
      r'''$.prop.padding_right''',
    ).toDouble();
    final padding_top = getJsonField(
      widget.json,
      r'''$.prop.padding_top''',
    ).toDouble();
    final padding_bottom = getJsonField(
      widget.json,
      r'''$.prop.padding_bottom''',
    ).toDouble();
    final jsonItem = getJsonField(
      widget.json,
      r'''$.child''',
    );
    final align_x = getJsonField(
      widget.json,
      r'''$.prop.align_x''',
    ).toDouble();
    final align_y = getJsonField(
      widget.json,
      r'''$.prop.align_y''',
    ).toDouble();

    return Builder(
      builder: (context) {
        if (functions.jsonToString(type) == 'box') {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              padding_left,
              padding_top,
              padding_right,
              padding_bottom,
            ),
            child: Container(
                width: width_type == "px"
                    ? width
                    : width_type == "per"
                        ? MediaQuery.of(context).size.width * width
                        : width_type == "inf"
                            ? double.infinity
                            : null,
                height: height_type == "px"
                    ? height
                    : height_type == "per"
                        ? MediaQuery.of(context).size.height * height
                        : height_type == "inf"
                            ? double.infinity
                            : null,
                decoration: BoxDecoration(
                  color: colorFromCssString(
                    fill_color,
                  ),
                  boxShadow: [],
                  borderRadius: BorderRadius.circular(border_radius),
                  border: Border.all(
                    color: colorFromCssString(
                      border_color,
                    ),
                    width: border_width,
                  ),
                ),
                alignment: AlignmentDirectional(align_x, align_y),
                child: AllPageConditionWidget(
                  json: jsonItem,
                )),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          );
        }
      },
    );
  }
}
