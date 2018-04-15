// Zakaria chahboun
/* 13/04/2018 */

void main(List<String> args) {

  // Classe / Interface
  Calculator calc = new Calculator();
  var dis = calc.getDistance(10.25,15.0);
  print(dis);
  calc.printKilo();

  // Classe With Final values
  Car ferrari = new Car("model 1", "ferrari");
  ferrari.printInfo();
}

/****************** OTHERS ********************** */

// Interfaces ( = simple class)
abstract class Distance {
  double getDistance(double x, double y);
}

abstract class Kilo {
  printKilo();
}

// Classes
class Calculator implements Distance,Kilo{
    double getDistance(double x, double y){
      return (y-x).abs();
    }
    printKilo(){
        //print("Kilo!");
    }
}

// Classes ( Init the final values)
class Car {
  final _model;
  String _name;

  Car(model,name) : _model = model{
    this._name = name;
  }

  printInfo() => print("Model:$_model, Name:$_name");
}