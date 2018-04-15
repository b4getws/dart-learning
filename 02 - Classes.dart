// Zakaria chahboun
/* 13/04/2018 */

void main(List<String> args) {

  // Classe / Interface
  Calculator calc = new Calculator();
  var dis = calc.getDistance(10.25,15.0);
  print(dis);
  calc.printKilo();

}

// interfaces ( = simple class)
abstract class Distance {
  double getDistance(double x, double y);
}

abstract class Kilo {
  printKilo();
}

class Calculator implements Distance,Kilo{
    double getDistance(double x, double y){
      return (y-x).abs();
    }
    printKilo(){
        //print("Kilo!");
    }
}