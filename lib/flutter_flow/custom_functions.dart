import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? jsonToString(dynamic value) {
  // return as string
  if (value == null) {
    return null;
  } else if (value is String) {
    return value;
  } else if (value is num) {
    return value.toString();
  } else if (value is bool) {
    return value.toString();
  } else if (value is List) {
    return json.encode(value);
  } else if (value is Map) {
    return json.encode(value);
  } else if (value is DateTime) {
    return DateFormat('yyyy-MM-ddTHH:mm:ss').format(value);
  } else if (value is DateTimeRange) {
    final start = DateFormat('yyyy-MM-ddTHH:mm:ss').format(value.start);
    final end = DateFormat('yyyy-MM-ddTHH:mm:ss').format(value.end);
    return '$start/$end';
  } else if (value is FFPlace) {
    final latLng = '${value.latLng.latitude},${value.latLng.longitude}';
    final name = value.name;
    final address = value.address;
    final city = value.city;
    final state = value.state;
    final country = value.country;
    final zipCode = value.zipCode;
    return '$latLng/$name/$address/$city/$state/$country/$zipCode';
  } else if (value is Duration) {
    return value.inMilliseconds.toString();
  } else if (value is double) {
    return value.toString();
  } else {
    return null;
  }
}
