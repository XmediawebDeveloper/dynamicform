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
      '{\"type\":\"column\",\"attr\":{\"prop\":{\"type\":\"scroll\",\"axis_main\":\"left\",\"axis_cross\":\"start\",\"item_spacing\":10,\"start_spacing\":20,\"end_spacing\":10},\"children\":[{\"type\":\"listview\",\"attr\":{\"prop\":{\"type\":\"primary\",\"item_spacing\":10,\"start_spacing\":20,\"end_spacing\":10},\"children\":[{\"type\":\"text\",\"attr\":{\"prop\":{\"type\":\"text\",\"font_size\":10,\"text_align\":\"left\",\"font_family\":\"Readex Pro\",\"text_color\":\"#000000\",\"font_weight\":4,\"font_style\":\"none\",\"decoration\":\"none\",\"max_chars\":0,\"max_chars_type\":\"none\"},\"action\":{},\"value\":\"Kumar\"}},{\"type\":\"text\",\"attr\":{\"prop\":{\"type\":\"text\",\"font_size\":10,\"text_align\":\"left\",\"font_family\":\"Readex Pro\",\"text_color\":\"#000000\",\"font_weight\":4,\"font_style\":\"none\",\"decoration\":\"none\",\"max_chars\":0,\"max_chars_type\":\"none\"},\"action\":{},\"value\":\"Naveen\"}},{\"type\":\"text\",\"attr\":{\"prop\":{\"type\":\"text\",\"font_size\":10,\"text_align\":\"left\",\"font_family\":\"Readex Pro\",\"text_color\":\"#000000\",\"font_weight\":4,\"font_style\":\"none\",\"decoration\":\"none\",\"max_chars\":0,\"max_chars_type\":\"none\"},\"action\":{},\"value\":\"Sakthi\"}}]}}]}}');
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
