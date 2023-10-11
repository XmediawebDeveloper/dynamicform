import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_page_model.dart';
export 'new_page_model.dart';

class NewPageWidget extends StatefulWidget {
  const NewPageWidget({Key? key}) : super(key: key);

  @override
  _NewPageWidgetState createState() => _NewPageWidgetState();
}

class _NewPageWidgetState extends State<NewPageWidget> {
  late NewPageModel _model;
  final weight = 100;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  //  add weight to font weight
  FontWeight get fontWeight => FontWeight.values[5];
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            'Page Title1',
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
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Flexible(
                  child: Text(
                    'Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: colorFromCssString(
                          '#000000',
                          defaultColor: Colors.black,
                        ),
                        fontWeight: fontWeight,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        letterSpacing: 1),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
