import '/components/all_page_condition_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AllPageCondition component.
  late AllPageConditionModel allPageConditionModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    allPageConditionModel = createModel(context, () => AllPageConditionModel());
  }

  void dispose() {
    unfocusNode.dispose();
    allPageConditionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
