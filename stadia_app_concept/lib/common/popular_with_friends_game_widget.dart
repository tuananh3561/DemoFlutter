import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stadiaappconcept/styleguide/text_styles.dart';

class PopularWithFriendsGameWidget extends StatelessWidget {
  final String imagePath;

  const PopularWithFriendsGameWidget({Key key, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(imagePath),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: InkWell(
              onTap: null,
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Play",
                    textAlign: TextAlign.center,
                    style: playWhiteTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
