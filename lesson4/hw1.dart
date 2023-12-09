zuyg() {
  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List fin = [];
  for (var el in a) {
    if (el % 2 == 0) {
      fin.add(el);
    }
  }
  return fin;
}

void main(List<String> args) {
  print(zuyg());
}
