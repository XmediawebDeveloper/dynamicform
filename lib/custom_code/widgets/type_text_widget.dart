// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TypeTextWidget extends StatefulWidget {
  const TypeTextWidget({
    Key? key,
    this.width,
    this.height,
    required this.json,
    required this.value,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;
  final String value;

  @override
  _TypeTextWidgetState createState() => _TypeTextWidgetState();
}

class _TypeTextWidgetState extends State<TypeTextWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.json['type'] == 'text') {
      return Text(
        widget.json['max_chars'] == 0
            ? widget.value
            : widget.json['max_chars_type'] == 'clipoff'
                ? widget.value.maybeHandleOverflow(maxChars: 15)
                : widget.value
                    .maybeHandleOverflow(maxChars: 15, replacement: '...'),
        textAlign: widget.json['text_align'] == 'center'
            ? TextAlign.center
            : widget.json['text_align'] == 'right'
                ? TextAlign.right
                : widget.json['text_align'] == 'justify'
                    ? TextAlign.justify
                    : TextAlign.left,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: widget.json['font_family'],
              color: colorFromCssString(
                widget.json['text_color'],
                defaultColor: Colors.black,
              ),
              fontSize: widget.json['font_size'].toDouble(),
              fontWeight: FontWeight.values[widget.json['font_weight']],
              fontStyle: widget.json['font_style'] == 'italic'
                  ? FontStyle.italic
                  : FontStyle.normal,
              decoration: widget.json['decoration'] == 'underline'
                  ? TextDecoration.underline
                  : widget.json['decoration'] == 'lineThrough'
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
            ),
      );
    } else {
      return Flexible(
          child: Text(
        widget.json['max_chars'] == 0
            ? widget.value
            : widget.json['max_chars_type'] == 'clipoff'
                ? widget.value.maybeHandleOverflow(maxChars: 15)
                : widget.value
                    .maybeHandleOverflow(maxChars: 15, replacement: '...'),
        textAlign: widget.json['text_align'] == 'center'
            ? TextAlign.center
            : widget.json['text_align'] == 'right'
                ? TextAlign.right
                : widget.json['text_align'] == 'justify'
                    ? TextAlign.justify
                    : TextAlign.left,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: widget.json['font_family'],
              color: colorFromCssString(
                widget.json['text_color'],
                defaultColor: Colors.black,
              ),
              fontSize: widget.json['font_size'],
              fontWeight: FontWeight.values[widget.json['font_weight']],
              fontStyle: widget.json['font_style'] == 'italic'
                  ? FontStyle.italic
                  : FontStyle.normal,
              decoration: widget.json['decoration'] == 'underline'
                  ? TextDecoration.underline
                  : widget.json['decoration'] == 'lineThrough'
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
            ),
      ));
    }
  }
}
