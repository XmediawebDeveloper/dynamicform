import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'row_type_model.dart';
export 'row_type_model.dart';

class RowTypeWidget extends StatefulWidget {
  const RowTypeWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _RowTypeWidgetState createState() => _RowTypeWidgetState();
}

class _RowTypeWidgetState extends State<RowTypeWidget> {
  late RowTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowTypeModel());

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

    return Container();
  }
}
