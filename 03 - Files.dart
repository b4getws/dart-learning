// Zakaria Chahboun
/*
15/04/2018
*/

import 'dart:async';
import 'dart:io';


void main() {

// Read File
// to use (async/await) you must return a 'Future' type function body
Future foo() async{
	try {

			var des = await new File('text.txt').readAsString();
			// to do not use (async/await) : use promise ".then(val){...}"
			print(des);

	} on IOException catch (e) {
	print('Could not describe object: $e');
	}
}

foo();
}
