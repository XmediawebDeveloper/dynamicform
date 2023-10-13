import '/components/condition_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'column_widget.dart' show ColumnWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ColumnModel extends FlutterFlowModel<ColumnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for condition component.
  late ConditionModel conditionModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    conditionModel = createModel(context, () => ConditionModel());
  }

  void dispose() {
    conditionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
