import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String result, bmi, interpretation;
  ResultPage({this.result, this.interpretation, this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RESULT'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'YOUR RESULT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.4,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: Text(
                          result,
                          style: TextStyle(
                              color: Color(0XFF37C782),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        bmi,
                        style: TextStyle(
                            fontSize: 100.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        interpretation,
                        style: TextStyle(fontSize: 20.0, letterSpacing: 1.5),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              text: "RE-CALCULATE",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InputPage();
                }));
              },
            )
          ],
        ));
  }
}
