import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listview_model.dart';
export 'listview_model.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _ListviewWidgetState createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  late ListviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListviewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
