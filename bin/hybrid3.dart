import '../lib/students.dart';
import 'dart:io';
import 'dart:convert';

void main() {
  String students = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<dynamic> studentData = jsonDecode(students);

  List<Map<String, String>> studentsData = List<Map<String, String>>.from(studentData.map((item) {
    return Map<String, String>.from(item);
  }));

  Students studentList = Students(studentsData);

  studentList.sort("first");

  print("Sorted Students:");
  studentList.output();

  studentList.plus({"first": "Samatar", "last": "Robleh", "email": "samrobleh@algonquincollege.com"});

  print("List of new students");
  studentList.output();

  studentList.remove("Last student removed");

  print("New list of students after removing a student");
  studentList.output();
}



