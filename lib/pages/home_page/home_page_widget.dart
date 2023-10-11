import '/components/column_widget.dart';
import '/components/container_widget.dart';
import '/components/listview_widget.dart';
import '/components/row_type_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.type''',
                  )) ==
                  'column') {
                return wrapWithModel(
                  model: _model.columnModel,
                  updateCallback: () => setState(() {}),
                  child: ColumnWidget(
                    json: getJsonField(
                      FFAppState().json,
                      r'''$.attr''',
                    ),
                  ),
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.type''',
                  )) ==
                  'row') {
                return wrapWithModel(
                  model: _model.rowTypeModel,
                  updateCallback: () => setState(() {}),
                  updateOnChange: true,
                  child: RowTypeWidget(
                    json: getJsonField(
                      FFAppState().json,
                      r'''$.json''',
                    ),
                  ),
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.type''',
                  )) ==
                  'listview') {
                return wrapWithModel(
                  model: _model.listviewModel,
                  updateCallback: () => setState(() {}),
                  child: ListviewWidget(),
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.type''',
                  )) ==
                  'container') {
                return wrapWithModel(
                  model: _model.containerModel,
                  updateCallback: () => setState(() {}),
                  child: ContainerWidget(),
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
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
                      FFAppState().json,
                      r'''$.attr.value''',
                    ).toString(),
                    json: getJsonField(
                      FFAppState().json,
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
          ),
        ),
      ),
    );
  }
}
