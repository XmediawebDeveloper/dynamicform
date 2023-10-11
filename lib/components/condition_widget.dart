import '/components/listview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'condition_model.dart';
export 'condition_model.dart';

class ConditionWidget extends StatefulWidget {
  const ConditionWidget({
    Key? key,
    this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _ConditionWidgetState createState() => _ConditionWidgetState();
}

class _ConditionWidgetState extends State<ConditionWidget> {
  late ConditionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConditionModel());

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
              r'''$.type''',
            )) ==
            'column') {
          return wrapWithModel(
            model: _model.listviewModel,
            updateCallback: () => setState(() {}),
            child: ListviewWidget(),
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          );
        }
      },
    );
  }
}
