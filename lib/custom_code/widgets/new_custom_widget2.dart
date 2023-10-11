// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class NewCustomWidget2 extends StatefulWidget {
  const NewCustomWidget2({
    Key? key,
    this.width,
    this.height,
    this.type,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? type;

  @override
  _NewCustomWidget2State createState() => _NewCustomWidget2State();
}

class _NewCustomWidget2State extends State<NewCustomWidget2> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        'Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).error,
            ),
      ),
    );
  }
}
