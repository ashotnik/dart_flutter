import 'dart:io';
import 'dart:convert';

// 5.1
void readJson() {
  File file = new File('./Files/books.json');
  String content = file.readAsStringSync();
  final parsedJson = jsonDecode(content);
  for (var data in parsedJson) {
    print(
        "Title ${data['title']}. Author ${data['author']}.Date ${data['publication_year']}");
    // 5.2
    if (data['publication_year'] == "2023") {
      print("Title ${data['title']}. Author ${data['author']}.Date ${data['publication_year']}");
    }
  }
}

void main(List<String> args) {
  readJson();
}
