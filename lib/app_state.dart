import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
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
    _safeInit(() {
      if (prefs.containsKey('ff_ImageJSon')) {
        try {
          _ImageJSon = jsonDecode(prefs.getString('ff_ImageJSon') ?? '');
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
      '{ "type": "column", "attr": { "prop": { "type": "scroll", "axis_main_align": "center", "axis_cross_align": "center", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 20, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Kumar" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Chandra" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Sakthi" } } } }, { "type": "row", "attr": { "prop": { "type": "scroll", "axis_main_align": "space_even", "axis_cross_align": "start", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Naveen" } } } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Pandi" } } } } ] } }, { "type": "row", "attr": { "prop": { "type": "scroll", "axis_main_align": "space_even", "axis_cross_align": "start", "main_axis": "max", "item_spacing": 20, "start_spacing": 20, "end_spacing": 10, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0 }, "children": [ { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#eb4034", "border_color": "#00FFFFFF", "width": 100, "width_type": "px", "height_type": "px", "height": 30, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "text", "attr": { "prop": { "type": "text", "font_size": 18, "text_align": "left", "font_family": "Readex Pro", "text_color": "#000000", "font_weight": 8, "font_style": "none", "decoration": "none", "max_chars": 0, "max_chars_type": "none" }, "action": {}, "value": "Naveen" } } } } ] } }, { "type": "container", "attr": { "prop": { "type": "box", "fill_color": "#00000000", "border_color": "#00000000", "width": 300, "width_type": "px", "height_type": "empty", "height": 50, "border_radius": 0, "border_width": 0, "padding_left": 0, "padding_right": 0, "padding_top": 0, "padding_bottom": 0, "align_x":0, "align_y":0 }, "child": { "type": "textfield", "attr": { "prop": { "input_type": "text", "max_lines": 1, "max_chars": 0, "is_password": false, "font_family":"Readex Pro", "font_size":14, "font_weight":4, "font_style":"none", "text_align":"left", "text_color":"#000", "border_radius": 8, "border_width": 1, "border_color": "#eb4034", "focusborder_radius": 0, "focusborder_width": 1, "focusborder_color": "#00000000", "errorborder_radius": 0, "errorborder_width": 1, "errorborder_color": "#00000000", "padding_left": 10, "padding_right": 10, "padding_top": 10, "padding_bottom": 10, "hint_text": "Enter Name", "hint_text_color":"#000", "label_text": "", "label_text_color":"#000", "border_type": "outline" }, "action": { "even_type" : "" }, "value": 10 } } } } ] } }');
  dynamic get json => _json;
  set json(dynamic _value) {
    _json = _value;
    prefs.setString('ff_json', jsonEncode(_value));
  }

  dynamic _ImageJSon = jsonDecode(
      '{\"type\":\"column\",\"attr\":{\"prop\":{\"type\":\"scroll\",\"axis_main_align\":\"center\",\"axis_cross_align\":\"center\",\"main_axis\":\"max\",\"item_spacing\":20,\"start_spacing\":20,\"end_spacing\":10,\"padding_left\":0,\"padding_right\":0,\"padding_top\":0,\"padding_bottom\":0},\"children\":[{\"type\":\"image\",\"attr\":{\"prop\":{\"border_radius\":50,\"box_fit\":\"cover\",\"width\":100,\"width_type\":\"per\",\"height_type\":\"px\",\"height\":350,\"padding_left\":15,\"padding_right\":15,\"padding_top\":0,\"padding_bottom\":0,\"img_url\":\"https://www.stonedsanta.in/wp-content/uploads/2019/06/Naveens-Name-String-Art-by-Sonal-Malhotra.jpg\"}}}]}}');
  dynamic get ImageJSon => _ImageJSon;
  set ImageJSon(dynamic _value) {
    _ImageJSon = _value;
    prefs.setString('ff_ImageJSon', jsonEncode(_value));
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
