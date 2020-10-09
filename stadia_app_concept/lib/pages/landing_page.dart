import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stadiaappconcept/common/content_heading_widget.dart';
import 'package:stadiaappconcept/common/last_played_game_tile_widget.dart';
import 'package:stadiaappconcept/common/rounded_image_widget.dart';

import 'package:stadiaappconcept/image_asset.dart';
import 'package:stadiaappconcept/model/friends.dart';
import 'package:stadiaappconcept/pages/secondary_home_page.dart';
import 'package:stadiaappconcept/styleguide/colors.dart';
import 'package:stadiaappconcept/styleguide/text_styles.dart';
import 'package:stadiaappconcept/model/last_played_game.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo,
                height: logoHeight,
                color: logoTintColor,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Icon(
                          Icons.menu,
                          color: tertiaryTextColor,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondaryHomePage()));
                        },
                      ),
                      Icon(
                        Icons.search,
                        color: tertiaryTextColor,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            RoundedImageWidget(
                              imagePath: player1,
                              randing: 39,
                              isOnline: true,
                              showRanding: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello',
                                      style: userNameTextStyle
                                    ),
                                    TextSpan(text: '\n'),
                                    TextSpan(text: 'Jon Sow', style: userNameTextStyle)
                                  ]
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Material(
                          elevation: 4,
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        "HOURS PLAYED",
                                        style: hoursPlayedLabelTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "297 Hours",
                                  style: hoursPlayedTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ContentHeadingWidget(
                          heading : "Last played games"
                      ),
                      for(var i = 0; i < lastPlayedGames.length; i ++) LastPlayedGameTileWidget(
                        lastPlayedGame: lastPlayedGames[i],
                        screenWidth: screenWidth,
                      ),
                      ContentHeadingWidget(
                          heading : "Friends"
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: <Widget>[
                        for(var i = 0; i < friends.length; i ++)
                          RoundedImageWidget(
                            imagePath: friends[i].imagePath,
                            isOnline: friends[i].isOnline,
                            name: friends[i].name,
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
