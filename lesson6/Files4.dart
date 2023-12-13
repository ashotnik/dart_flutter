import 'dart:io';
import 'dart:convert';

void readJson() {
  File file = new File('./Files/person.json');
  String content = file.readAsStringSync();
  final parsedJson = jsonDecode(content);
  for (var data in parsedJson['employees']) {
    print("Name is ${data['name']}. Mail is ${data['email']}.");
  }
}

void main(List<String> args) {
  readJson();
}
