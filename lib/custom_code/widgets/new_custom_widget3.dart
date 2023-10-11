// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class NewCustomWidget3 extends StatefulWidget {
  const NewCustomWidget3({
    Key? key,
    this.width,
    this.height,
    required this.text,
    required this.colors,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String text;
  final Color colors;

  @override
  _NewCustomWidget3State createState() => _NewCustomWidget3State();
}

class _NewCustomWidget3State extends State<NewCustomWidget3> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Readex Pro',
            color: FlutterFlowTheme.of(context).accent2,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            letterSpacing: 1,
          ),
    );
  }
}
