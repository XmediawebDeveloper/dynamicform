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

class Imagewidget extends StatefulWidget {
  const Imagewidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _ImagewidgetState createState() => _ImagewidgetState();

  static network(img_url,
      {required width, required height, required BoxFit fit}) {}
}

class _ImagewidgetState extends State<Imagewidget> {
  @override
  Widget build(BuildContext context) {
    final border_radius = getJsonField(
      widget.json,
      r'''$.prop.border_radius''',
    ).toDouble();

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

    final box_fits = getJsonField(
      widget.json,
      r'''$.prop.box_fit''',
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

    final img_url = getJsonField(
      widget.json,
      r'''$.prop.img_url''',
    );

    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
          padding_left,
          padding_top,
          padding_right,
          padding_bottom,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(border_radius),
          child: Imagewidget.network(
            img_url,
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
            fit: box_fits == 'fill'
                ? BoxFit.fill
                : box_fits == 'contain'
                    ? BoxFit.contain
                    : box_fits == 'cover'
                        ? BoxFit.cover
                        : box_fits == 'fitWidth'
                            ? BoxFit.fitWidth
                            : box_fits == 'fitHeight'
                                ? BoxFit.fitHeight
                                : box_fits == 'none'
                                    ? BoxFit.none
                                    : box_fits == 'scaleDown'
                                        ? BoxFit.scaleDown
                                        : BoxFit.fill,
          ),
        ));
  }
}
