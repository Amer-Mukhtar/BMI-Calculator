import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'results.dart';
import 'icon.dart';
import 'card.dart';
import 'package:project_10_1/NavButton.dart';
import 'calculate.dart';
enum gender { male, female }

gender genderis = gender.male;

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF102625),
          title: const Center(
              child: Text(
            'BMI Calculator',
            style: KLargeButtonTS,
          )),
        ),
        body:const bod(),
      ),
    );
  }
}

class bod extends StatefulWidget {
  const bod({super.key});

  @override
  State<bod> createState() => _bodState();
}

class _bodState extends State<bod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xFF102625),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderis = gender.male;
                    });
                  },
                  child: cardd(
                    color: genderis == gender.male ? newtilecolor : tilecolor,
                    cardchild: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 70,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Male',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                )),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    genderis = gender.female;
                  });
                },
                child: cardd( color:
                    genderis == gender.female ? newtilecolor : tilecolor,
                    cardchild: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 70,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Female',
                          style: kLabelTextStyle,
                        )
                      ],
                    )),
              )),
            ],
          ),
          Expanded(
              child: cardd(
                color:  tilecolor,
                  cardchild: SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Height',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'cm',
                              style: klabelCM,
                            )
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 260,
                            activeColor: Colors.white,
                            inactiveColor: Colors.black,
                            onChanged: (double here) {
                              setState(() {
                                height = here.round();
                              });
                            })
                      ],
                    ),
                  ))),
          Row(
            children: <Widget>[
              Expanded(
                  child: cardd(
                      color:tilecolor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              roundicon(
                                icon: FontAwesomeIcons.minus,
                                onressed: () {
                                  setState(() {
                                    --weight;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              roundicon(
                                icon: FontAwesomeIcons.plus,
                                onressed: () {
                                  setState(() {
                                    ++weight;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: cardd(
                      color: tilecolor,
                      cardchild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Age',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                roundicon(
                                  icon: FontAwesomeIcons.minus,
                                  onressed: () {
                                    setState(() {
                                      --age;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                roundicon(
                                  icon: FontAwesomeIcons.plus,
                                  onressed: () {
                                    setState(() {
                                      ++age;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ))),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          NavButto(
            ontap: () {
              Calculator calc=Calculator(height:height,weight: weight);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Result_page(
                    bmiResult: calc.calculate(),
                    ResText: calc.getResult(),
                    Interp: calc.Interpret(),
                  )
                  )
              );
            },
            text:const Text(
              'Calculate',
              style: KLargeButtonTS,
            ),
          )
        ],
      ),
    );
  }
}
