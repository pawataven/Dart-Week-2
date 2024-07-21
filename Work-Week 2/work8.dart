// TODO - เขียนโปรแกรมเพื่อตรวจสอบตัวเลขเป็นเลขคี่หรือเลขคู่ ให้รับค่าทางคีย์บอร์ด หากค่าที่รับมีค่าเป็นค่าว่าง ให้วนกลับไปรับค่าใหม่

import 'dart:io';

void main(List<String> args) {
  while (true) {
    stdout.write('Enter Number :> ');
    String? number = stdin.readLineSync();

    if (number == null) {
      continue;
    }

    var number_convert = int.tryParse(number); //NOTE - บังคับให้ใส่ได้เเค่เลขเท่านั้น เเละเเปลงเป็นตัวเลข

    if (number_convert == null) {
      print('ไม่ใช่ตัวเลข');
      continue;
    }

    int total = number_convert % 2;

    if (total == 0) {
      print('${number} เป็นเลขคู่');
    } else {
      print('${number} เป็นเลขคี่');
    }
    break;
  }
}
