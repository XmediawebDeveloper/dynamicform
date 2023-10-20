import '/components/listview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'condition_widget.dart' show ConditionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConditionModel extends FlutterFlowModel<ConditionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for listview component.
  late ListviewModel listviewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listviewModel = createModel(context, () => ListviewModel());
  }

  void dispose() {
    listviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
