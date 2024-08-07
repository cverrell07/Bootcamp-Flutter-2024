// Shortcut:
  // to run void main: ctrl + alt + n
  // to copy paste line: shift + alt + arrow up or down
  // to move line: alt + arrow up or down
  // delete and paste into other line: ctrl + x -> ctrl + v
  // command all: block all line + ctrl + /

void main(){
  // Variables
  var variable1 = 42;
  variable1 = 32;
  var variable2 = "Bob";
  var variable3 = 3.14;
  String? name;
  final String ambience = "cozy";
  const double pi = 3.14;
  print(variable1);
  print(variable2);
  print(variable3);
  print(name);
  print(ambience);
  print(pi);

  // Operator and Assert
  var a = 2;
  var b = 3;
  assert(a == b);
  assert(5~/2 == 3);
  int? c;
  c ??= 5;
  print(c);

  // Built-in Types or Iterable Type
  var numbers = {3, 5, 6}; // Set
  var person = {"name": "Alice", "age": 25}; // Map
  var fruits = ['apple', 'banana', 'pineapple']; // List
  for(int i=0; i<numbers.length; i++){
    print(numbers.elementAt(i));
  }

  // For each with dart syntax .forEach
  numbers.forEach(print);
  print(person.containsKey("name"));
  print(fruits[0]);

  // Object
  Object dartString = "Dart"; 
  print(dartString);

  // Enum
  var color1 = Color.red;
  print(color1);

  // Iterable
  Iterable<int> numbers2 = [3, 5, 7];
  print(numbers2);

  // Dynamic Variable
  dynamic name2 = "Bob";
  name2 = 1;
  print(name2);

  // StringBuffer
  var message = StringBuffer('Dart is fun');
  for(int i=0; i<5; i++){
    message.write("!");
  }
  print(message);

  // Looping (continue and break)
  for(int i=0; i<10; i++){
    if(i == 3){
      continue;
    }
    print('${i+1}');
  }

  // Conditional if else
  int score = 80;
  if(score < 60){
    print("F");
  }else if(score > 70 && score < 75){
    print("B");
  }else if(score > 75 && score <= 80){
    print('B+');
  }else if(score > 80){
    print('A-');
  }else{
    print('A');
  }

  if(score < 60){
    print("F");
  }if(score > 70){
    print("B");
  }if(score > 75){
    print('B+');
  }if(score > 80){
    print('A-');
  }

  // Conditional switch case
  String fruit = 'pineapple';
  switch(fruit){
    case 'apple':
      print("apple");
      break;
    case 'banana':
      print('banana');
      break;
    default:
      print('not in the list');
      break;
  }

  // Arrow Function
  int add(int a, int b) => a + b;

  // Basic Function
  int subtract(int a, int b){
    return a-b;
  }
  print(add(5, 10));
  print(subtract(10, 5));
}

// Enum Declaration
enum Color {
  red,
  green,
  yellow,
}