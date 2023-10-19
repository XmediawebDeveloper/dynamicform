import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'column_com_model.dart';
export 'column_com_model.dart';

class ColumnComWidget extends StatefulWidget {
  const ColumnComWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _ColumnComWidgetState createState() => _ColumnComWidgetState();
}

class _ColumnComWidgetState extends State<ColumnComWidget> {
  late ColumnComModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColumnComModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello World',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondary,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ],
    );
  }
}
