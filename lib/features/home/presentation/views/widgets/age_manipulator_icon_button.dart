import 'package:flutter/material.dart';

IconButton ageManipulator(VoidCallback function, IconData icon) {
  return IconButton(
    onPressed: function,
    icon: Icon(icon),
  );
}
