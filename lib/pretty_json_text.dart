import 'package:flutter/material.dart';
import 'dart:convert';
class PrettyJson extends StatelessWidget {
  final String text;
  const PrettyJson({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    String fmtJson = formatJson(text);
    return Text(fmtJson, style: TextStyle(fontFamily: 'monospace'),);
  }

  String formatJson(String input) {
    try {
      var objJson = jsonDecode(input);
      var encoder = JsonEncoder.withIndent("  ");
      String prettyString = encoder.convert(objJson);
      return prettyString;
    } catch (e) {
      return 'Invalid JSON: $e'; 
    }
  }
}
