call(arg) {
  final splited = arg.split(' ');
  final reversedList = splited.reversed;
  String str = '';
  for (var el in reversedList) {
    str += el+' ';
  }
  print(str);
}

void main(List<String> args) {
  call("My name is Mamikon");
}
