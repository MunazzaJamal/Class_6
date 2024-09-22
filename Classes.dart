void main() {
// object | instance
  Teacher T1 = Teacher();
  T1.name = 'Sana';
  Teacher T2 = Teacher();
  T2.name = 'Naina';
  T1.subjects = ['English', 'Math'];
  T2.subjects = ['Urdu', 'Islamiyat'];
  print(T2.canTeach('English'));
}

class Teacher {
//properties | attributes
  var name = '';
  var subjects = [];

// method | behavior
  canTeach(subject) {
    return subjects.any((sub) => sub == subject);
  }
}
