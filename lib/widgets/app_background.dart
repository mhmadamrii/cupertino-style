import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    super.key,
    this.header,
    this.body,
    this.headerHeight,
  });

  final Widget? body;
  final Widget? header;
  final Widget? headerHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 300.0,
          child: Center(
            child: header,
          ),
        ),
        Expanded(
          child: Container(
            child: body,
          ),
        )
      ],
    );
  }
}
