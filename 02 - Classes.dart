// Zakaria chahboun
/* 13/04/2018 */

void main(List<String> args) {

  // Classe / Interface
  Calculator calc = new Calculator();
  var dis = calc.getDistance(10.25,15.0);
  print(dis);
  calc.printKilo();

  // Functions
  print(decorateName("zakaria"));
  printMyInfo(10); // 10 : zaki
  printMyInfo(10,"chahboun"); // 10 : chahboun

}

// functions
String decorateName(String name){
  return "*** "+name+" ***";
}

void printMyInfo(int id, [String name = "zaki"]){ // default variabls mus be in [...]
    print("ID: $id, Name: $name");
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