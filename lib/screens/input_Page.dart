import 'package:bmic/app_widget/create_button.dart';
import 'package:bmic/app_widget/icon_content.dart';
import 'package:bmic/app_widget/result_calculate.dart';
import 'package:bmic/constant/constant.dart';
import 'package:bmic/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 100;
  int weight = 60;
  int age = 20;
  Color femaleBColor = Color(0xff141E61);
  Color maleBColor = Color(0xff141E61);

  void uPgradeBColor(int gender) {
    if (gender == 1) {
      if (maleBColor == Constant.KInActiveBColor) {
        maleBColor = Constant.KActiveBColor;
        femaleBColor = Constant.KInActiveBColor;
      } else {
        maleBColor = Constant.KInActiveBColor;
      }
    }
    if (gender == 2) {
      if (femaleBColor == Constant.KInActiveBColor) {
        femaleBColor = Constant.KActiveBColor;
        maleBColor = Constant.KInActiveBColor;
      } else {
        femaleBColor = Constant.KInActiveBColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR ',
          style: Constant.KAppBarStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CreateButton(
                    culer: femaleBColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    onpress: () {
                      setState(() {
                        uPgradeBColor(2);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CreateButton(
                    culer: maleBColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    onpress: () {
                      setState(() {
                        uPgradeBColor(1);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CreateButton(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: Constant.KLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: Constant.KNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: Constant.KLabelTextStyle,
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 0,
                          max: 200,
                          divisions: 200,
                          label: height.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                    culer: Constant.KActiveBColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CreateButton(
                  culer: Constant.KActiveBColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: Constant.KLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: Constant.KNumberTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                              backgroundColor: Colors.grey.shade500,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.grey.shade500,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: CreateButton(
                    culer: Constant.KActiveBColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: Constant.KLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: Constant.KNumberTextStyle,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.grey.shade500,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.grey.shade500,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              ResultCalculate rc =
                  ResultCalculate(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResultPage(  textBMI: rc.calculateBMI(),
                    textResult: rc.getTextResult(),
                    messageResult: rc.getMessageResult(),);
                }),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              child: Center(
                  child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
