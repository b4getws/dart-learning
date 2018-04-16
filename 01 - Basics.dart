// Zakaria Chahboun
/*
12/04/2018
13/04/2018
*/
import 'res/TEST.dart' as POW; // my dart file

void main() {

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