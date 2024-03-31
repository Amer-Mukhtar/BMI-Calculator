import 'dart:math';
class Calculator
{
  Calculator({required this.height,required this.weight});
  final int height;
  final int weight;
  double _bmi=0;
String calculate()
{
  _bmi=weight/pow(height/100,2);
  return _bmi.toStringAsFixed(1);
}

String getResult()
{
  if (_bmi>=25)
    {
      return 'You are Overweight';
    }
  else if(_bmi>18.5)
    {
      return 'Your Weight is Normal';
    }
  else
    {
      return 'You are Underweight';
    }
}


  String Interpret()
  {
    if (_bmi>=25)
    {
      return 'Your BMI suggests that you are in the high weight range. Its important to address this to maintain your health. Consider consulting with a healthcare professional for personalized advice on managing your weight and making healthy lifestyle changes';
    }
    else if(_bmi>18.5)
    {
      return 'Your BMI indicates that you are within the normal weight range. This means your weight is considered healthy for your height. Keep up the good work with your healthy lifestyle choices!';
    }
    else
    {
      return 'Your BMI indicates that you have a low body weight. Its important to maintain a balanced diet and consider consulting with a healthcare professional for personalized advice';
    }
  }

}