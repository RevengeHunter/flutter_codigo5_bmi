import 'dart:math';
class BMIBrain {
  int weight;
  int height;

  double bmi = 0.0;

  BMIBrain({
    required this.weight,
    required this.height,
  });

  double calculateBMI() {
    bmi = (weight/pow((height/100),2));

    return bmi;
  }

  String resultBMI(){
    String result;
    double bmi = calculateBMI();

    if(bmi>=28){
      result = "OBESITY";
    }else if(25<=bmi && bmi<28){
      result = "OVERWEIGHT";
    }else if(18<=bmi && bmi<25){
      result = "NORMAL";
    }else if(bmi<18){
      result = "UNDERWEIGHT";
    }else{
      result = "NO DATA";
    }

    return result;
  }

  String advicetBMI(){
    String result;
    double bmi = calculateBMI();

    if(bmi>=28){
      result = "You should do more exercise and eat healthy";
    }else if(25<=bmi && bmi<28){
      result = "Do more exercise";
    }else if(18<=bmi && bmi<25){
      result = "Stay healthy";
    }else if(bmi<18){
      result = "Go to hospital";
    }else{
      result = "NO DATA";
    }

    return result;
  }

}
