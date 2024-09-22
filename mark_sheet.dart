void main() {
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
  /*for (var data in students) {
    //data.putIfAbsent('Obt_marks', () => calculate(data['Subjects']));
    data.addAll(calculate(data['Subjects']));
    print(data);
  }*/
  //OR
  students.forEach((data) {
    data.addAll(calculate(data['Subjects']));
    print(data);
    //OR
    //var per = calculate(data['Subjects']);
    //data['Obt_marks'] = per['Obt_marks'];
  });
}

Map<String, dynamic> calculate(data) {
  int obt_marks = 0;
  for (var d in data) {
    var values = List.of(d['Subjects'].values);
    obt_marks = values.reduce((sum, element) => sum + element);
  }
  int tot = 300;
  num a = (obt_marks * 100) / tot;
  var perc = double.parse(a.toStringAsFixed(2));
  String Grade = '';
  if (perc > 90)
    Grade = 'A';
  else if (perc > 80)
    Grade = 'B';
  else if (perc > 70)
    Grade = 'C';
  else if (perc > 60)
    Grade = 'D';
  else
    Grade = 'F';
  return {'Obt_marks': obt_marks, 'Percentage': perc, 'Grade': Grade};
}
