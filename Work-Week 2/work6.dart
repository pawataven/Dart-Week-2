//TODO - เขียนโปรแกรมเพื่อสร้างเครื่องคิดเลขอย่างง่ายที่ทําการบวก ลบ คูณ และหาร

import 'dart:io';

void main(List<String> args) {
  stdout.write('ป้อนตัวเลขที่1 :> ');
  var number1 = stdin.readLineSync()!; //NOTE - รับข้อมูลเป็น string
  var convertNum1 = int.parse(number1); //NOTE - เเปลงเป็น int เก็บใน convertNum

  print(
      'พิมเครื่องหมายที่จะนำไปทำงานต่อ:\nบวก = 1 | ลบ = 2 | คูณ = 3 | หาร = 4 ');

  stdout.write('ป้อนเครื่องหมายที่จะคำนวน :> ');
  var calculationMark = stdin.readLineSync()!;
  var calculationMark_Convert = int.parse(calculationMark);

  if (calculationMark_Convert < 1 || calculationMark_Convert > 4) { //NOTE - เงื่อนไขดัก ให้หยุดการทำงาน
    print('เกิดข้อผิดพลาด หรือ คำสั่งผิด');
    return;
  }

  stdout.write('ป้อนตัวเลขที่2 :> ');
  var number2 = stdin.readLineSync()!; //NOTE - รับข้อมูลเป็น string
  var convertNum2 = int.parse(number2); //NOTE - เเปลงเป็น int เก็บใน convertNum

  //!SECTION สร้างเงื่อนไข เพื่อคำนวน
  if (calculationMark_Convert == 1) {
    int total = convertNum1 + convertNum2;
    print('${total}');
  } else if (calculationMark_Convert == 2) {
    int total = convertNum1 - convertNum2;
    print('${total}');
  } else if (calculationMark_Convert == 3) {
    int total = convertNum1 * convertNum2;
    print('${total}');
  } else if (calculationMark_Convert == 4) {
    double total = convertNum1 / convertNum2;
    print('${total}');
  }
}
