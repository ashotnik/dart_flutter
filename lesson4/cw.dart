import 'dart:math';

// void printResult(int? Function()? A) {
//   if (A != null)
//     print(A());
// }

// int? func() {
//   return null;
// }
Random random = new Random();
final Set<String> set = {};
final Map<String, String> map = {};

func(void Function(List ml) callback) {
  final List<int> ml = List.generate(10, (i) {
    return 0 + random.nextInt(1001);
  });
  print(ml);
  callback(ml);
}

min(mll) {
  int n = mll[0];
  int minimum = 0;
  for (var m in mll) {
    if (n > m) {
      n = m;
      minimum = n;
    }
  }
  print(minimum);
}

max(mll) {
  int n = 0;
  int maximum = 0;
  for (var m in mll) {
    if (m > n) {
      n = m;
      maximum = m;
    }
  }
  print(maximum);
}

void main() {
  func(min);
  func(max);

  // int cnt = 0;
  // for (var el in ml) {
  //   print(el);
  // }
  // print(cnt);
  // for (var i = 0; i <= 100; i++) {
  //   print(i);
  // }
}
