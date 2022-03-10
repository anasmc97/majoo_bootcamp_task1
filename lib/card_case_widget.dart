import 'package:flutter/material.dart';
import 'package:task1_majoo_bootcamp/extensions.dart';

class CardCaseWidget extends StatelessWidget {
  double? widthBox;
  double? heightBox;
  double? widthTextContainer;
  double? heighTextContainer;
  String title;
  String content;
  String subContent;
  Color? colorText;
  Color? colorBox;
  CardCaseWidget(
    this.title,
    this.content,
    this.subContent,
    this.colorText,
    this.colorBox, {
    this.widthBox,
    this.heightBox,
    this.heighTextContainer,
    this.widthTextContainer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorBox,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      height: heightBox,
      width: widthBox,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            width: widthTextContainer,
            height: heighTextContainer,
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colorText),
                  textScaleFactor:
                      context.media.textScaleFactor.clamp(0.1, 1.5),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            width: widthTextContainer,
            height: heighTextContainer,
            child: Text(
              content,
              style: TextStyle(
                  fontSize: 36, fontWeight: FontWeight.bold, color: colorText),
              textScaleFactor: context.media.textScaleFactor.clamp(0.1, 1.5),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            width: widthTextContainer,
            height: heighTextContainer,
            child: Row(
              children: [
                Text(
                  subContent,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: colorText),
                  textScaleFactor:
                      context.media.textScaleFactor.clamp(0.1, 1.5),
                ),
                Icon(
                  Icons.arrow_upward,
                  color: colorText,
                  size: 16 * context.media.textScaleFactor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
