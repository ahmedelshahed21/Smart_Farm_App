import 'package:flutter/material.dart';

UnderlineInputBorder buildUnderlineInputBorder({required Color color}) {
  return UnderlineInputBorder(
      borderSide: BorderSide(
          width: 1.5,
          color: color
      )
  );
}