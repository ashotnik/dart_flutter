import 'dart:io';

enum week { mon, tue, wed, thu, fri, sat, sun }

week getweek(int day) {
  switch (day) {
    case 1:
      return week.mon;
    case 2:
      return week.tue;
    case 3:
      return week.wed;
    case 4:
      return week.thu;
    case 5:
      return week.fri;
    case 6:
      return week.sat;
    case 7:
      return week.sun;
    default:
      throw ArgumentError("Invalid day");
  }
}

void getWorkingDay(week Function(int day) weeks,days) {
  week currentWeek = weeks(days);
  if (currentWeek == week.sat || currentWeek == week.sun) {
    print("Today is a non-working day");
  } else {
    print("Today is a working day");
  }
}

void main(List<String> args) {
   print("Enter a day (1-7): ");
  int userDay = int.parse(stdin.readLineSync()!);

  getWorkingDay(getweek,userDay);
}
