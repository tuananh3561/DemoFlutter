import 'package:flutter/material.dart';
import 'package:stadiaappconcept/common/game_progress_widget.dart';
import 'package:stadiaappconcept/model/last_played_game.dart';
import 'package:stadiaappconcept/styleguide/text_styles.dart';

class LastPlayedGameTileWidget extends StatelessWidget {
  final LastPlayedGame lastPlayedGame;
  final double screenWidth;

  const LastPlayedGameTileWidget(
      {Key key, this.lastPlayedGame, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        lastPlayedGame.imagePath,
                        height: 60,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 8,
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: lastPlayedGame.name,
                            style: headingTwoTextStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "${lastPlayedGame.hoursPlayed} hours played",
                            style: bodyTextStyle,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          GameProgressWidget(
            gameProgress: lastPlayedGame.gameProgress,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}
