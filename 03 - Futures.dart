/*
Zakaria Chahboun

Asynchronous Programming: Futures
26/04/2018
*/

import 'dart:async';
import 'dart:io';

main(List<String> args) {
  print("HELLO");
  exo1(); // Execute Second!
  exo2(); // Execute First! :)
}
// ------------------ FUNCTIONS -------------------  //
exo1() async{
  String text = "";
  int i = 0;
  while (i<120) {
    if(i % 2 == 0)
      text += " A";
    else
      text += " B";
    i++;
  }
  print(text); 
}

exo2(){
  print("Simple Function!");
}

// -----------------------------------------------  //


/*
  A Future represents a computation that doesn’t complete immediately.
  Where a normal function returns the result,
  an asynchronous function returns a Future,
  which will eventually contain the result.
  The future will tell you when the result is ready.
  
  ---------------------------------------------------------------------------

  Dart is single-threaded.
  Synchronous code can make your program freeze.
  Use Futures to perform asynchronous operations.
  Use await in an async function to pause execution until a Future completes.
  Or use Future’s then() method.
  Use try-catch expressions in async functions to catch errors.
  Or use Future’s catchError() method.
  You can chain Futures to run asynchronous functions in order.
*/