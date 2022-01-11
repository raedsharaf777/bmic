import 'package:bmic/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  var textBMI;
  var textResult;
  var messageResult;

  ResultPage({this.textBMI, this.textResult, this.messageResult});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
            style: Constant.KAppBarStyle,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Your Result ',
                      style: Constant.KTitleTextStyle,
                    ),
                  ),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textResult,
                      style: Constant.KResultTextStyle,
                    ),
                    Text(
                      textBMI,
                      style: Constant.KBMITextStyle,
                    ),
                    Text(
                      messageResult,
                      style: Constant.KBodyTextStyle,
                    ),
                  ],
                ),
                // margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xff141e61),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              flex: 5,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'RE-Calculate',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
