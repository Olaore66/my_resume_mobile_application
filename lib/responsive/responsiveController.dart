import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget wideLayout;
  final Widget narrowLayout;
  const ResponsiveLayout(
      {super.key, required this.wideLayout, required this.narrowLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      if (constrainsts.maxWidth > 600) {
        return wideLayout;
      } else {
        return narrowLayout;
      }
    });
  }
}
