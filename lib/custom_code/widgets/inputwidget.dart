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

class Inputwidget extends StatefulWidget {
  const Inputwidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _InputwidgetState createState() => _InputwidgetState();
}

class _InputwidgetState extends State<Inputwidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final input_type = getJsonField(
      widget.json,
      r'''$.prop.input_type''',
    );
    final max_lines = getJsonField(
      widget.json,
      r'''$.prop.max_lines''',
    );
    final max_chars = getJsonField(
      widget.json,
      r'''$.prop.max_chars''',
    );

    final is_password = getJsonField(
      widget.json,
      r'''$.prop.is_password''',
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

    final focusborder_radius = getJsonField(
      widget.json,
      r'''$.prop.border_radius''',
    ).toDouble();
    final focusbborder_color = getJsonField(
      widget.json,
      r'''$.prop.border_color''',
    );
    final focusbborder_width = getJsonField(
      widget.json,
      r'''$.prop.border_width''',
    ).toDouble();

    final errorborder_radius = getJsonField(
      widget.json,
      r'''$.prop.border_radius''',
    ).toDouble();
    final errorborder_color = getJsonField(
      widget.json,
      r'''$.prop.border_color''',
    );
    final errorborder_width = getJsonField(
      widget.json,
      r'''$.prop.border_width''',
    ).toDouble();

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

    final hint_text = getJsonField(
      widget.json,
      r'''$.prop.hint_text''',
    );
    final label_text = getJsonField(
      widget.json,
      r'''$.prop.label_text''',
    );
    bool passwordVisibility = false;

    return Builder(builder: (context) {
// Generated code for this TextField Widget...
      TextEditingController? textController = TextEditingController(
        text: '',
      );

      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
          padding_left,
          padding_top,
          padding_right,
          padding_bottom,
        ),
        child: TextFormField(
            controller: textController,
            obscureText: is_password == true ? !passwordVisibility : false,
            decoration: InputDecoration(
              labelText: 'Label here...',
              labelStyle: FlutterFlowTheme.of(context).labelMedium,
              hintText: hint_text,
              hintStyle: FlutterFlowTheme.of(context).labelMedium,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorFromCssString(border_color),
                  width: border_width,
                ),
                borderRadius: BorderRadius.circular(border_radius),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorFromCssString(
                    focusbborder_color,
                  ),
                  width: focusbborder_width,
                ),
                borderRadius: BorderRadius.circular(focusborder_radius),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorFromCssString(
                    errorborder_color,
                  ),
                  width: errorborder_width,
                ),
                borderRadius: BorderRadius.circular(errorborder_radius),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorFromCssString(
                    errorborder_color,
                  ),
                  width: errorborder_width,
                ),
                borderRadius: BorderRadius.circular(errorborder_radius),
              ),
              suffixIcon: is_password == true
                  ? InkWell(
                      onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 22,
                      ),
                    )
                  : null,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
            keyboardType: input_type == "number"
                ? TextInputType.number
                : input_type == "phone"
                    ? TextInputType.phone
                    : input_type == "email"
                        ? TextInputType.emailAddress
                        : input_type == "multiline"
                            ? TextInputType.multiline
                            : TextInputType.text,
            maxLines: max_lines,
            maxLength: max_chars == 0 ? null : max_chars),
      );
    });
  }
}
