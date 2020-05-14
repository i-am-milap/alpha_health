import 'package:flutter/material.dart';

class DayHeader extends StatelessWidget {
  final String dayHeader;
  DayHeader({@required this.dayHeader});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24.0,
        top: 12.0,
        bottom: 12.0,
      ),
      color: Color(0xFFF3F3F5),
      child: Text(
        dayHeader,
        style: TextStyle(fontSize: 14.0),
      ),
    );
  }
}
