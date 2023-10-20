// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ChoiceChipswidget extends StatefulWidget {
  const ChoiceChipswidget({
    Key? key,
    this.width,
    this.height,
    this.json,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic json;

  @override
  _ChoiceChipswidgetState createState() => _ChoiceChipswidgetState();
}

class _ChoiceChipswidgetState extends State<ChoiceChipswidget> {
  @override
  Widget build(BuildContext context) {
    final spacing = getJsonField(
      widget.json,
      r'''$.prop.spacing''',
    ).toDouble();
    final run_spacing = getJsonField(
      widget.json,
      r'''$.prop.spacing''',
    ).toDouble();
    double padding_left = getJsonField(
      widget.json,
      r'''$.prop.padding_left''',
    ).toDouble();
    double padding_right = getJsonField(
      widget.json,
      r'''$.prop.padding_right''',
    ).toDouble();
    double padding_top = getJsonField(
      widget.json,
      r'''$.prop.padding_top''',
    ).toDouble();
    double padding_bottom = getJsonField(
      widget.json,
      r'''$.prop.padding_bottom''',
    ).toDouble();

    final itemList = getJsonField(
      widget.json,
      r'''$.prop.itemList''',
    ).toList();
    final selectedItem = getJsonField(
      widget.json,
      r'''$.prop.selected''',
    );

    final selectedItemList = getJsonField(
      widget.json,
      r'''$.prop.selectedItemList''',
    );

    List<Map<String, String>> allItems = [];
    for (var item in itemList) {
      final name = getJsonField(
        item,
        r'''$.name''',
      );
      final imageUrl = getJsonField(
        item,
        r'''$.imageUrl''',
      );
      allItems.add({
        'name': name,
        'imageUrl': imageUrl,
      });
    }

    print(selectedItem);
    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
          padding_left,
          padding_top,
          padding_right,
          padding_bottom,
        ),
        child: Wrap(
          spacing: spacing,
          runSpacing: run_spacing,
          children: allItems.map((item) {
            final name = getJsonField(
              item,
              r'''$.name''',
            );
            final imageUrl = getJsonField(
              item,
              r'''$.imageUrl''',
            );
            print('name: $name');
            print('item: $item');
            print('spacing: $spacing');

            print('name: $imageUrl');

            return ChoiceChip(
              label: Text(name),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
              avatar: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              selected: selectedItem == name,
              onSelected: (selected) {
                setState(() {
                  print('selected: $selected');
                });
              },
            );
          }).toList(),
        ));
  }
}
