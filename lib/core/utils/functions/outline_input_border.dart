import 'package:flutter/material.dart';

OutlineInputBorder buildOutlineInputBorder({required Color color}) {
  return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(16)
  );
}
