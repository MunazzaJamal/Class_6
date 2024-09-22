import 'dart:io';

void main() {
  /*int a = int.parse(stdin.readLineSync()!);
  print('Integer input: $a');

  String b = stdin.readLineSync()!; //nullable
  print('String input: $b');

  String? c = stdin.readLineSync(); //not nullable (problem)
  print('String input: $c');*/

  /*
  //To sum all numbers in a list
  List numbers = [1, 2, 3, 4];
  int a = numbers.reduce((value, element) => value + element);
  //print(a); */
  List<Map<String, dynamic>> students = [
    {
      'Name': 'Sara',
      'Roll. No.': '11',
      'Subjects': {'English': 65, 'Urdu': 23, 'Math': 65}
    },
    {
      'Name': 'Sana',
      'Roll. No.': '12',
      'Subjects': {'English': 94, 'Urdu': 95, 'Math': 85}
    },
    {
      'Name': 'Alia',
      'Roll. No.': '13',
      'Subjects': {'English': 72, 'Urdu': 55, 'Math': 65}
    }
  ];
  num obt_marks = 0;
  for (var data in students) {
    var values = List.of(data['Subjects'].values);
    obt_marks = values.reduce((sum, element) => sum + element);
  }
  print(obt_marks);
}
