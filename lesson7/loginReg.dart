import 'dart:io';
import 'dart:convert';

Reg(json, log, pass) {
  File file = new File('./users.json');
  Map<String, dynamic> newUser = {'login': log, 'pass': pass};
  json.add(newUser);
  file.writeAsStringSync(jsonEncode(json));
  return ("You Succesfully registred");
}

Login(json, n, p) {
  for (var data in json) {
    if (data["login"] == n && p == data["pass"]) {
      return ('You succseful loginned.');
    }
  }
  return "Invalid Login or Password";
}

void main(List<String> args) {
  File file = new File('./users.json');
  String content = file.readAsStringSync();
  final parsedJson = jsonDecode(content);

  print("Do you have Account?(y,n)");
  String? regLog = stdin.readLineSync();

  if (regLog == "y") {
    print("Login");
    String? uName = stdin.readLineSync();
    print("Password");
    String? pass = stdin.readLineSync();
    print(Login(parsedJson, uName, pass));
  } else if (regLog == "n") {
    print("Login");
    String? uName = stdin.readLineSync();
    while (true) {
      print("Password");
      String? pass = stdin.readLineSync();
      print("Retype password");
      String? rePass = stdin.readLineSync();
      if (pass == rePass) {
        print(Reg(parsedJson, uName, pass));
        break;
      } else {
        print("Passwords are different.Please Retype.");
      }
    }
  }
}
