import 'package:flutter/material.dart';
import 'package:stadiaappconcept/styleguide/text_styles.dart';

class ContentHeadingWidget extends StatelessWidget {

  final heading;

  const ContentHeadingWidget({Key key, this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        heading,
        style: headingOneTextStyle,
      ),
    );
  }

}