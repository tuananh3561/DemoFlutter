import 'package:bookapp/consttants.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * .5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: size.height * .1),
                            BookInfo(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.display1,
              ),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "When the earth was flat andeveyone wanted to When the earth was flat andeveyone wanted to When the earth was flat andeveyone wanted to",
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 10,
                              color: kLightBackColor
                          ),
                        ),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(
                        score: 4.9,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 195,
        ),
      ],
    );
  }
}
