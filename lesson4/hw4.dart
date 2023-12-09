import 'dart:io';

randnum(num) {
  int min = 0;
  int max = 100;
  int? res;
  while (res != num) {
    
    
    print("mece $res ?");
    String anwser = stdin.readLineSync() ?? '';

    if (anwser == "h") {
      min = (max + min) ~/ 2;
      res = min;
    } else if (anwser == "l") {
      max = (max + min) ~/ 2;
      res = max;
    }
    print(res);
   
  }
}

void main(List<String> args) {
  randnum(29);
}
