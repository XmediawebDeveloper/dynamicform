import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'listview_model.dart';
export 'listview_model.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({Key? key}) : super(key: key);

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
              FFAppState().json,
              r'''$.attr.prop.type''',
            )) ==
            'primary') {
          return ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [],
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
