// Zakaria Chahboun
/*
12/04/2018
13/04/2018
*/

import 'dart:async';
import 'dart:io';

class Car {
	sayHello(String name)=> print("Hello "+name);
}

void main() {

// Read File
/*
// to use (async/await) you must return a 'Future' type function body
Future foo() async{
	try {

			var des = await new File('C:/Users/hp/Desktop/text.txt').readAsString();
			// to do not use (async/await) : use promise ".then(val){...}"
			print(des);

	} on IOException catch (e) {
	print('Could not describe object: $e');
	}
}

foo();
*/

// Define Class
Car mcar = new Car();
mcar.sayHello("zakaria");

// List
var list = new List(); // var list = [1,2]
list.add(1);
list.add(2);
print(list);

// Map
var map = new Map(); // var map = {1: zakaria, 2:ali}
map[1] = "zakaria";
map[2] = "ali";
print(map);

// Parse String to Number
try {
var x = num.parse("55");
print(x);
	
} catch (e) {
	print(e.toString());
}

// Hash Code 'len of hash = 9 :)'
var hash = "zakaria 1996";
print(hash.hashCode);

// Number Methods
var a = 195.9;
print(a.ceil()); // 196
print(a.floor()); // 195
print(a.round()); // 196
print(a.compareTo(14785)); // -1 'if less', 1 'if great', 0 'if eaqual'

// String Methods
var b = "zakaria,chahboun,ali,balawi";
print(b.split(','));
 
// Enumurations (show end of main())
print(Status.values);
}

// Enumurations
enum Status {none,solid,liquid,gaz}