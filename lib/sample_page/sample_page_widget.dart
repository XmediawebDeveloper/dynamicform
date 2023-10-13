import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sample_page_model.dart';
export 'sample_page_model.dart';

class SamplePageWidget extends StatefulWidget {
  const SamplePageWidget({Key? key}) : super(key: key);

  @override
  _SamplePageWidgetState createState() => _SamplePageWidgetState();
}

class _SamplePageWidgetState extends State<SamplePageWidget> {
  late SamplePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SamplePageModel());

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
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final jsons = getJsonField(
                _model.json,
                r'''$.childern''',
              ).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: jsons.length,
                itemBuilder: (context, jsonsIndex) {
                  final jsonsItem = jsons[jsonsIndex];
                  return Container(
                      width: 100, height: 100, color: Colors.green);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
