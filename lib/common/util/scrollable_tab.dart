import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildScrollableTab(Widget child) {
  return SingleChildScrollView(padding: EdgeInsets.all(2.w), child: child);
}
