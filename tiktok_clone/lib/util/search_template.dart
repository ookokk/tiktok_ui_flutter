import 'package:flutter/material.dart';
import 'package:tiktok_clone/util/custom_text_style.dart';

class SearchTemplate extends StatelessWidget {
  final String hashtag;
  final String hashtag2;
  final String hashtag3;

  final double kheight;
  final double kheight2;

  final customImage;
  final custom2Image;
  final custom3Image;

  SearchTemplate({
    required this.hashtag,
    required this.hashtag2,
    required this.hashtag3,
    required this.kheight,
    required this.kheight2,
    required this.customImage,
    required this.custom2Image,
    required this.custom3Image,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              // width: MediaQuery.of(context).size.width / 2,
              width: double.infinity / 3,
              height: kheight,
              child: Image(image: customImage)),
          Positioned(
            bottom: 10,
            left: 5,
            child: Text(
              "#" + hashtag,
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "ShantellSans",
                  color: Colors.white),
            ),
          ),
          Container(
              alignment: Alignment.centerRight,
              //width: MediaQuery.of(context).size.width / 2,
              width: double.infinity / 3,
              height: kheight2,
              child: Image(image: custom2Image)),
          Positioned(
            bottom: 10,
            right: 5,
            child: Text(
              "#" + hashtag2,
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "ShantellSans",
                  color: Colors.white),
            ),
          ),
          Container(
              alignment: Alignment.center,
              //width: MediaQuery.of(context).size.width / 2,
              width: double.infinity / 3,
              height: kheight2,
              child: Image(image: custom3Image)),
        ],
      ),
    );
  }
}
