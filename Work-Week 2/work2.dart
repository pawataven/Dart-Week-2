//ToDo เขียนโปรแกรมเพื่อตรวจสอบว่าตัวเลขที่รับทางคีย์บอร์ดเป็นค่าบวก ลบ หรือศูนย์
import 'dart:io';

void main(List<String> args) {
  stdout.write('กรุณาใส่ตัวเลข : > ');
  int? number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print('ตัวเลของท่านเป็นค่า ลบ เนื่องจากมีค่าน้อยกว่า 0');
  } else if (number > 0) {
    print('ตัวเลของท่านเป็นค่า บวก เนื่องจากมีค่ามากกว่า 0');
  } else {
    print('ตัวเลของท่านเป็นค่าเท่ากับ 0');
  }
}
