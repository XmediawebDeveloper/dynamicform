import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'container_model.dart';
export 'container_model.dart';
import '/components/all_page_condition_widget.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  late ContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContainerModel());

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

    final width_type = getJsonField(
      widget.json,
      r'''$.prop.width_type''',
    );
    final height_type = getJsonField(
      widget.json,
      r'''$.prop.height_type''',
    );

    final width = getJsonField(
      widget.json,
      r'''$.prop.width''',
    ).toDouble();

    final height = getJsonField(
      widget.json,
      r'''$.prop.height''',
    ).toDouble();
    final fill_color = getJsonField(
      widget.json,
      r'''$.prop.fill_color''',
    );
    final border_radius = getJsonField(
      widget.json,
      r'''$.prop.border_radius''',
    ).toDouble();
    final border_color = getJsonField(
      widget.json,
      r'''$.prop.border_color''',
    );
    final border_width = getJsonField(
      widget.json,
      r'''$.prop.border_width''',
    ).toDouble();
    final type = getJsonField(
      widget.json,
      r'''$.prop.type''',
    );
    final padding_left = getJsonField(
      widget.json,
      r'''$.prop.padding_left''',
    ).toDouble();
    final padding_right = getJsonField(
      widget.json,
      r'''$.prop.padding_right''',
    ).toDouble();
    final padding_top = getJsonField(
      widget.json,
      r'''$.prop.padding_top''',
    ).toDouble();
    final padding_bottom = getJsonField(
      widget.json,
      r'''$.prop.padding_bottom''',
    ).toDouble();
    final jsonItem = getJsonField(
      widget.json,
      r'''$.child''',
    );

    return Builder(
      builder: (context) {
        if (functions.jsonToString(type) == 'box') {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              padding_left,
              padding_top,
              padding_right,
              padding_bottom,
            ),
            child: Container(
                width: width_type == "px"
                    ? width
                    : width_type == "per"
                        ? MediaQuery.of(context).size.width * width
                        : width_type == "inf"
                            ? double.infinity
                            : null,
                height: height_type == "px"
                    ? height
                    : height_type == "per"
                        ? MediaQuery.of(context).size.height * height
                        : height_type == "inf"
                            ? double.infinity
                            : null,
                decoration: BoxDecoration(
                  color: colorFromCssString(
                    fill_color,
                  ),
                  boxShadow: [],
                  borderRadius: BorderRadius.circular(border_radius),
                  border: Border.all(
                    color: colorFromCssString(
                      border_color,
                    ),
                    width: border_width,
                  ),
                ),
                child: AllPageConditionWidget(
                  json: jsonItem,
                )),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          );
        }
      },
    );
  }
}
