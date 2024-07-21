//TODO - เขียนโปรแกรมเพื่อคํานวณผลรวมของผลหารเอาเฉพาะจํานวนเต็ม ของเลขระหว่าง 10 - 100 ด้วย 10
import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter Number for divide 10-100:>');
  var number = stdin.readLineSync()!;

  int numberDivide = 10;

  int parseNumber = int.parse(number); //NOTE - เเปลงชนิดข้อมูลจาก string เป็น int เพื่อนำไปคำนวนต่อ
  

  if (parseNumber < 10 || parseNumber > 100) {
    print('กรุณาใส่ตัวเลขให้อยู่ระหว่างที่กำหนด!');
  } else {
      var total = parseNumber ~/ numberDivide;

  print('${total}');
  }
}
