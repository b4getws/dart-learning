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

  // Car2 Extends Car (Inheritance)
  Car2 fiat = new Car2(1,"fiat","model 4");
  fiat.printInfo();
  print(fiat.countCars()); // 4 cars! :)

  // Dart Getters/Setters Style !
  fiat.number = 10; // set number : 10
  print(fiat.number); // get number :)

  // Class / Interface
  Calculator calc = new Calculator();
  print(calc.getDistance(10.25,15.0));
  
  Calculator2 calc2 = new Calculator2();
  print(calc2.minToSec(12));

  // Class (Constant constructors)
  //ImmutablePoint po = ImmutablePoint(1, 2);
  //po.x = 6; // Wrong!

  // Factory constructors
  Logger l = new Logger("AB");
  Logger v = new Logger("AB");
  Logger c = new Logger("AP");

  print(identical(l, v)); // true : because it's the same object!
  print(identical(l, c)); // false : because is not the same object!

  // Overridable operators
  Point p1 = new Point(5,6);
  Point p2 = new Point(8,0);

  Point p3 = p1 + p2;
  Point p4 = p1 - p2;
  p3.printInfos(); // (X: 13, Y: 6)
  p4.printInfos(); // (X: -3, Y: 6)

  // Comparing objects
  Phone nokia = new Phone("Nokia", 90);
  Phone nokia1 = new Phone("Nokia", 90);
  Phone nokia2 = new Phone("Nokia", 81);

  print(nokia.compareTo(nokia1)); // 0
  print(nokia.compareTo(nokia2)); // 1
  print(nokia2.compareTo(nokia1)); // -1

}// END OF MAIN

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

  // Multiple Constructors (Named constructors)
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

// Classes Inheritance
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

//---------------------------------------------------//
/*
If you want to create a class A that supports class B’s API without inheriting B’s implementation,
class A should implement the B interface.
:)

A & B == Normal Classes
*/

// Interfaces (Abstract class)
abstract class Distance {
  double getDistance(double x, double y);
}
abstract class Time {
  int minToSec(int min);
}

// Implement Interfaces (Dart Style) !
class Calculator extends Distance{

    // if you dont have "getDistance" in here == Error! :)
    double getDistance(double x, double y){
      return (y-x).abs();
    }
}

// Implement Interfaces (Normal Style)
class Calculator2 implements Distance, Time{

    // You must implement all funtions of (Distance &Time) Interfaces
    double getDistance(double x, double y){
      return (y-x).abs();
    }
    int minToSec(int min){
      return min*60;
    }
}

//---------------------------------------------------//
/*
Constant constructors

If your class produces objects that never change,
you can make these objects compile-time constants.

To do this, define a const constructor and make sure that all instance variables are final.
*/
class ImmutablePoint {
  static final ImmutablePoint origin =
      const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}

/*
Factory constructors

Use the factory keyword when implementing a constructor that **doesn’t always create a new instance of its class**.
For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype.
*/

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{}; // Init!

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

//-----------------------------------------------//
// Comparing objects
/*
  Implement the Comparable interface to indicate that an object can be compared to another object,
  usually for sorting.
  
  The compareTo() method returns < 0 for smaller, 0 for the same, and > 0 for bigger.
*/
class Phone implements Comparable<Phone> {
  String _name;
  int _version;

  Phone(this._name,this._version);

  @override
  int compareTo(Phone other){
    if(_version == other._version) return 0;
    if(_version > other._version) return 1;
    if(_version < other._version) return -1;
  }
}

//-----------------------------------------------//
//Overridable operators
class Point {
  int _x;
  int _y;

  Point([this._x = 0,this._y = 0]);

  // override + operation
  Point operator+(Point p){
    return new Point(this._x+p._x, this._y+p._y);
  }
  // override - operation
  Point operator-(Point p){
    return new Point(this._x-p._x, this._y-p._y);
  }

  printInfos()=> print("(X: $_x, Y: $_y)"); 
}