import 'package:flutter/material.dart';

class ProgrammeCard extends StatelessWidget {
  final String tag;
  final String image;
  final String programmeDuation;
  final String heading;

  ProgrammeCard({
    @required this.tag,
    @required this.image,
    @required this.programmeDuation,
    @required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Hero(
              tag: tag,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              programmeDuation,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
