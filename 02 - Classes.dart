// Zakaria chahboun
/* 13/04/2018 */

void main(List<String> args) {

  // Classe With Diffrent Constructors
  Car ferrari = new Car("ferrari","model 1");

  List<String> L = new List<String>();
  L.add("ford");
  L.add("model 2");
  Car ford = new Car.FromList(L);

  Map<int,String> M = new Map<int,String>();
  M[0] = "mercides";
  M[1] = "model 3";
  Car mercides = new Car.FromMap(M);

  ferrari.printInfo();
  ford.printInfo();
  mercides.printInfo();

  // Car2 Extends Car (inheritance)
  Car2 fiat = new Car2(1,"fiat","model 4");
  fiat.printInfo();
  print(fiat.countCars()); // 4 cars! :)

  // Dart Getters/Setters Style !
  fiat.number = 10; // set number : 10
  print(fiat.number); // get number :)

  // Classe / Interface
  Calculator2 calc = new Calculator2();
  var dis = calc.getDistance(10.25,15.0);
  print(dis);

}

/****************** OTHERS ********************** */
// Classes
class Car {
  final String _model;
  String _name;
  static int _count = 0;

  // Defalut Constructor
  Car(this._name,model) : _model = model{ // list d'initialisation :)
    _count ++;
  }

  // Multiple Constructors
  Car.FromList(List<String> L): _model = L[1]{
    _name = L[0];
    _count ++;
  }

  Car.FromMap(Map<int,String> M): _model = M[1]{
    _name = M[0];
    _count ++;
  }

  // Methods
  printInfo() => print("Model:$_model, Name:$_name");
  int countCars() => _count;
}

class Car2 extends Car{
  int _number;

  // Super(..)!
  Car2(this._number,String name, String model) : super(name,model);
  // Model & Name form Car!
  printInfo() => print("Model:$_model, Name:$_name, Number:$_number");

  // Getters & Setters (with Same Name!)
  int get number => _number;
  set number(int val) => _number = val;
}

// Interfaces (simple abstract class)
abstract class Distance {
  double getDistance(double x, double y);
}
abstract class Kilo {
  printKilo();
}

// Implement Interfaces
class Calculator implements Distance,Kilo{
    double getDistance(double x, double y){
      return (y-x).abs();
    }
    printKilo(){
        //print("Kilo!");
    }
}

// Implement Interfaces (Dart Style) !
class Calculator2 extends Distance{

    // if you dont have "getDistance" in here == Error! :)
    double getDistance(double x, double y){
      return (y-x).abs();
    }
}