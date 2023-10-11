import '/components/column_widget.dart';
import '/components/container_widget.dart';
import '/components/listview_widget.dart';
import '/components/row_type_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for column component.
  late ColumnModel columnModel;
  // Model for row_type component.
  late RowTypeModel rowTypeModel;
  // Model for listview component.
  late ListviewModel listviewModel;
  // Model for container component.
  late ContainerModel containerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnModel = createModel(context, () => ColumnModel());
    rowTypeModel = createModel(context, () => RowTypeModel());
    listviewModel = createModel(context, () => ListviewModel());
    containerModel = createModel(context, () => ContainerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    columnModel.dispose();
    rowTypeModel.dispose();
    listviewModel.dispose();
    containerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
