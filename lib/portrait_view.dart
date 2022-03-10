import 'package:flutter/material.dart';
import 'package:task1_majoo_bootcamp/card_case_widget.dart';
import 'package:task1_majoo_bootcamp/extensions.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = context.media.size.height;
    final screenWidth = context.media.size.width;

    final statusBar = context.media.padding.top;
    final finalHeight = (screenHeight - statusBar);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              height: finalHeight * 0.25,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: screenHeight * 0.03),
                    width: screenWidth - 40,
                    child: Text(
                      "Perkembangan COVID-19 Indonesia",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800]),
                      textAlign: TextAlign.center,
                      textScaleFactor:
                          context.media.textScaleFactor.clamp(0.1, 1.2),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth - 40,
                    child: Text(
                      "Last Update: 2022-02-25 17:08:55",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.blue[800]),
                      textAlign: TextAlign.center,
                      textScaleFactor:
                          context.media.textScaleFactor.clamp(0.1, 1.2),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.refresh, color: Colors.blue[800])),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: finalHeight * 0.20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: CardCaseWidget(
                        "Kasus Aktif",
                        "5,457,775",
                        "49,447",
                        Colors.orange[800],
                        Colors.orange[200],
                        heightBox: finalHeight * 0.18,
                        widthTextContainer: screenWidth - 40,
                      ),
                    ),
                    SizedBox(
                      height: finalHeight * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: CardCaseWidget(
                        "Sembuh",
                        "4,736,234",
                        "61,361",
                        Colors.green[800],
                        Colors.green[200],
                        heightBox: finalHeight * 0.18,
                        widthTextContainer: screenWidth - 40,
                      ),
                    ),
                    SizedBox(
                      height: finalHeight * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: CardCaseWidget(
                        "Meninggal",
                        "147,586",
                        "244",
                        Colors.red[800],
                        Colors.red[200],
                        heightBox: finalHeight * 0.18,
                        widthTextContainer: screenWidth - 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: finalHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth - 40,
                  child: Text(
                    "Note: Data Harian COVID-19 biasanya update pada pukul sekitar 17:00 WIB",
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.left,
                    textScaleFactor:
                        context.media.textScaleFactor.clamp(0.1, 1.5),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
