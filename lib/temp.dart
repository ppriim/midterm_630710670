import 'dart:math';

enum Resultt {
  CeltoFah,
  CeltoKel,
  FahtoCel,
  FahtoKel,
  KeltoCel,
  KeltoFah

}

class temp {
  var result;
  var str = '';

  temp() {
  }


  double? doGuess(var num,var check) {
    if (check == 1) {
      result = ((num * 9/5) + 32) as double?;
      str = 'CeltoFah';
    }else if(check == 2){
      result = (num + 273.15) as double?;
      str = 'CeltoKel';
    }else if(check == 3){
      result = ((5/9)*(num-32)) as double?;
      str = 'FahtoCel';
    }else if(check == 4){
      result = ((5/9)*(num+459.67)) as double?;
      str = 'FahtoKel';
    }else if(check == 5){
      result = (num - 273.15) as double?;
      str = 'KeltoCel';
    }else if(check == 6){
      result = (1.8*(num - 273) + 32) as double?;
      str = 'KeltoFah';
    }
    return result;
  }
}