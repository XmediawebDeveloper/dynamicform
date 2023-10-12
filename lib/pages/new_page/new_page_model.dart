import '/components/condition_widget.dart';
import '/components/all_page_condition_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'new_page_widget.dart' show NewPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewPageModel extends FlutterFlowModel<NewPageWidget> {
  ///  Local state fields for this page.

  String text = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for condition component.
  late ConditionModel conditionModel;

  /// Initialization and disposal methods.
  late AllPageConditionModel allPageConditionModel;

  void initState(BuildContext context) {
    conditionModel = createModel(context, () => ConditionModel());
    allPageConditionModel = createModel(context, () => AllPageConditionModel());
  }

  void dispose() {
    unfocusNode.dispose();
    conditionModel.dispose();
    allPageConditionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
