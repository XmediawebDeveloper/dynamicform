import '/components/column_widget.dart';
import '/components/container_widget.dart';
import '/components/listview_widget.dart';
import '/components/row_type_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_page_condition_model.dart';
export 'all_page_condition_model.dart';

class AllPageConditionWidget extends StatefulWidget {
  const AllPageConditionWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _AllPageConditionWidgetState createState() => _AllPageConditionWidgetState();
}

class _AllPageConditionWidgetState extends State<AllPageConditionWidget> {
  late AllPageConditionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllPageConditionModel());

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
            model: _model.columnModel,
            updateCallback: () => setState(() {}),
            child: ColumnWidget(
              json: getJsonField(
                widget.json,
                r'''$.attr''',
              ),
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'row') {
          return wrapWithModel(
            model: _model.rowTypeModel,
            updateCallback: () => setState(() {}),
            updateOnChange: true,
            child: RowTypeWidget(
              json: getJsonField(
                widget.json,
                r'''$.attr''',
              ),
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'listview') {
          return wrapWithModel(
            model: _model.listviewModel,
            updateCallback: () => setState(() {}),
            child: ListviewWidget(
              json: getJsonField(
                widget.json,
                r'''$.attr''',
              ),
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'container') {
          return wrapWithModel(
            model: _model.containerModel,
            updateCallback: () => setState(() {}),
            child: ContainerWidget(
              json: getJsonField(
                widget.json,
                r'''$.attr''',
              ),
            ),
          );
        } else if (functions.jsonToString(getJsonField(
              widget.json,
              r'''$.type''',
            )) ==
            'text') {
          return Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            child: custom_widgets.TypeTextWidget(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 100.0,
              value: getJsonField(
                widget.json,
                r'''$.attr.value''',
              ).toString(),
              json: getJsonField(
                widget.json,
                r'''$.attr.prop''',
              ),
            ),
          );
        } else {
          return Text(
            'No Widget\n',
            style: FlutterFlowTheme.of(context).bodyMedium,
          );
        }
      },
    );
  }
}
