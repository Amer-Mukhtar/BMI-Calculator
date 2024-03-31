import 'package:flutter/material.dart';
import 'package:project_10_1/card.dart';
import 'package:project_10_1/constants.dart';
import 'package:project_10_1/NavButton.dart';

class Result_page extends StatelessWidget {
  @override

  Result_page({ required this.bmiResult,required this.ResText,required this.Interp});

  final String bmiResult;
  final String ResText;
  final String Interp;
@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text(
            'Your Result',
            style: KResult,
          ),
          backgroundColor: newtilecolor,
        ),
        body: Container(
          color: newtilecolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 3,
                child: cardd(
                  color: tilecolor,cardchild:  Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget> [

                      Text(ResText,style: KResult2),
                      Text('Your BMI is : $bmiResult',style: KResullt1,textAlign: TextAlign.center,),
                      Text(Interp,style: KResult3,textAlign: TextAlign.center,),

                    ],
                  ),
                  
                ),
                ),

              ),
              NavButto(
                ontap: () {
                  Navigator.pop(context);
                },
                text: const Text(
                  'Re-Calculate',
                  style: KLargeButtonTS,
                ),
              )
            ],
          ),
        ));
  }
}
