void main() {
  non_returnable();
  print(returnable_1(12));
  print(returnable_2());
  print(add());
}
//{} optional input
//non-returnable
void non_returnable() {
  int a = 10;
  print(a);
}

//returnable with datatype
String returnable_1(int variable) {
  print(variable);
  String b = 'abc';
  return b;
}

//returnable with out datatype
returnable_2({int b = 0}) {
  int a = 10;
  return a;
}

//function with parameters and return (Positioned optional paramater)
int add([a, b]) {
  return a + b;
}
 //Positioned required paramater
  //Positioned optional paramater
  //Optional parameter | named parameter
  //named parameter