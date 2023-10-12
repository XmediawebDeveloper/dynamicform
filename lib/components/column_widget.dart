import '/components/condition_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'column_model.dart';
export 'column_model.dart';
import '/components/all_page_condition_widget.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({
    Key? key,
    required this.json,
  }) : super(key: key);

  final dynamic json;

  @override
  _ColumnWidgetState createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  late ColumnModel _model;
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColumnModel());

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
              r'''$.prop.type''',
            )) ==
            'scroll') {
          print(getJsonField(
            widget.json,
            r'''$.prop.type''',
          ));

          return Builder(
            builder: (context) {
              if (functions.jsonToString(getJsonField(
                    widget.json,
                    r'''$.prop.axis_main''',
                  )) ==
                  'left') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          widget.json,
                          r'''$.prop.axis_cross''',
                        )) ==
                        'start') {
                      print("scroll in");
                      return Builder(
                        builder: (context) {
                          final jsonList = getJsonField(
                            widget.json,
                            r'''$.children''',
                          ).toList();
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(jsonList.length, (jsonListIndex) {
                              final jsonListItem = jsonList[jsonListIndex];
                              print('index: $jsonListIndex');
                              return AllPageConditionWidget(
                                json: jsonListItem,
                              );
                            }),
                          );
                        },
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.conditionModel,
                            updateCallback: () => setState(() {}),
                            child: ConditionWidget(),
                          ),
                        ],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'right') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'center') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'stretch') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    }
                  },
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                );
              }
            },
          );
        } else {
          return Builder(
            builder: (context) {
              if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'left') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'right') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'center') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      );
                    }
                  },
                );
              } else if (functions.jsonToString(getJsonField(
                    FFAppState().json,
                    r'''$.attr.prop.axis_main''',
                  )) ==
                  'stretch') {
                return Builder(
                  builder: (context) {
                    if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'start') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'center') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'end') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_even') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_around') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else if (functions.jsonToString(getJsonField(
                          FFAppState().json,
                          r'''$.attr.prop.axis_main''',
                        )) ==
                        'space_between') {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [],
                      );
                    }
                  },
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                );
              }
            },
          );
        }
      },
    );
  }
}
