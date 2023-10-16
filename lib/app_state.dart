import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_json')) {
        try {
          _json = jsonDecode(prefs.getString('ff_json') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _json = jsonDecode(
      '{ "type": "column", "attr": { "prop": { "type": "scroll", "axis_main_align": "center", "axis_cross_align": "center", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 20, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Kumar" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Chandra" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Sakthi" } } } }, { "type": "row", "attr": { "prop": { "type": "scroll", "axis_main_align": "space_even", "axis_cross_align": "start", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Naveen" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Pandi" } } } } ] } }, { "type": "row", "attr": { "prop": { "type": "scroll", "axis_main_align": "space_even", "axis_cross_align": "start", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Naveen" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 200, "width_type": "px", "height_type": "px", "height": 50, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "child": { "type": "textfield", "attr": { "prop": { "input_type": "text", "max_lines": 1, "max_chars": 0, "is_password": false, "border_radius": 0, "border_width": 1, "border_color": "#00ff00", "focusborder_radius": 0, "focusborder_width": 1, "focusborder_color": "#00ff00", "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "hint_text": "Enter Name", "label_text":"Password" }, "action": {}, "value":10 } } } } ] } } ] } }');
  dynamic get json => _json;
  set json(dynamic _value) {
    _json = _value;
    prefs.setString('ff_json', jsonEncode(_value));
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
