// Zakaria Chahboun
/*
12/04/2018
13/04/2018
*/
import 'res/TEST.dart' as POW; // my dart file

void main() {

// Differents types
int hex = 0xA; // (A)hex = (10)int
print(hex);

// Runes
/*
	In Dart, runes are the UTF-32 code points of a string.
	The usual way to express a Unicode code point is \uXXXX, where XXXX is a 4-digit hexidecimal value.
	** For example, the heart character (♥) is \u2665.
	
	To specify more or less than 4 hex digits, place the value in curly brackets.
	** For example, the laughing emoji (😆) is \u{1f600}.
*/
String ru = '\u2665'; // ♥
Runes input = new Runes(
		'\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');

print(ru);
print(new String.fromCharCodes(input));

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
print(hash.hashCode); // 18135797

// Number Methods
var a = 195.9;
print(a.ceil()); // 196
print(a.floor()); // 195
print(a.round()); // 196
print(a.compareTo(14785)); // -1 'if less', 1 'if great', 0 'if eaqual'

// String Methods
var b = "zakaria,chahboun,ali,balawi";
print(b.split(',')); // [zakaria, chahboun, ali, balawi]

var s1 = 'TEST1';
var s2 = '''TEST2''';
print(s1); print(s2);

var s3 = 'String '
    'concatenation'
    " works even over line breaks.";

print(s3);


// Enumurations (show end of main())
print(Status.values); // [Status.none, Status.solid, Status.liquid, Status.gaz]

// Anonymous Function
List<int> tlist = new List<int>();
tlist.add(10); tlist.add(20); tlist.add(30);

tlist.forEach((i){ // Method 1
	print(i);
});

tlist.forEach((i) =>	print(i));  // Method 2

// Import External dart file
print(POW.myPow(2, 10)); // 2^10 = 1024

// Functions
fruit(apple: 15,banana: 25);
student(125, "zakaria");
student(126, "karam", "GHAZA UNIVERS");

// The const keyword
/*
	a const variable is a compile-time constant. (Const variables are implicitly final.)
	Note: Instance variables can be final but not const.
	set the value to a compile-time constant such as a number or string literal.

	You can't change the value of a final or const variable.
 */
const ab = 10;
const int abc = 15;
var abcd = const [1,3,4];
final abcde = const {"salim":1, "kamal":2, "zaki":3};
print("$ab, $abc, $abcd, $abcde");

// Closures
Function makeAdder(int addBy){
	return (int i) => addBy+i;
}

var add = makeAdder(15); // addBy = 15; add = (int i)=> 15 + i;
print(add(2)); // add = (2)=> 15 + 2; return 17;

// Test Operatiors
/*
	The result of *obj is T* is true if obj *implements* the interface specified by T.
	For example, obj is Object is always true.
*/
String test;
print(test is Object); // true

// Cascade notation (..)
Person p = new Person(1, "zakaria");
p
	..name = "chahboun".toUpperCase() // == p.name = 'text ..' 
	..id = 2  // == id.name = 123..
	..univer = new Uinver("IBNO ZOHR");

print("Name : ${p.name}, ID : ${p.id}, UIN: ${p.univer.name}");// Name : CHAHBOUN, ID : 2, UIN: IBNO ZOHR


p.univer
	..name = "HARVARD UINVERSITY";

print("Name : ${p.name}, ID : ${p.id}, UIN: ${p.univer.name}");// Name : CHAHBOUN, ID : 2, UIN: HARVARD UINVERSITY
}

/* **************** OTHERS ****************** */

// Functions
/* Optional Parames */
void fruit({apple = 0, orange = 0, banana = 0}){
	print("apple: $apple, orange:$orange, banana:$banana");
}
/* Optional Parames : Last Parameter */
void student(int id, String name, [String uinvers = "ZAKI UNIVERS"]){// default variables must be in [...]
	print("id:$id, name:$name, uinvers:$uinvers");
}

// Enumurations
enum Status {none,solid,liquid,gaz}

// TESTs
class Person {
	int _id;
	String _name;
	Uinver _uiv = new Uinver("NO UINVERSITY");

	Person(this._id,this._name);
	set id(id) => _id = id;
	get id => _id;

	set name(name) => _name = name;
	get name => _name;

	set univer(ui) => _uiv = ui;
	get univer => _uiv;
}

class Uinver {
	String _name;

	Uinver(this._name);
	set name(n) => _name = n;
	get name => _name;
}