import '/components/condition_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'input_widget.dart' show InputWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputModel extends FlutterFlowModel<InputWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for condition component.
  late ConditionModel conditionModel2;

  /// Initialization and disposal methods.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  late bool passwordVisibility;

  void initState(BuildContext context) {
    conditionModel2 = createModel(context, () => ConditionModel());
  }

  void dispose() {
    conditionModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
