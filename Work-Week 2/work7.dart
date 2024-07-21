//TODO - เขียนโปรแกรมเพื่อพิมพ์ 1 ถึง 100 แต่ไม่ใช่ 41

import 'dart:io';

void main(List<String> args) {
  stdout.write('พิมเลขระหว่าง 1 - 100 ห้ามพิมเลข 41 : ');
  var number = stdin.readLineSync()!;
  var number_convert = int.parse(number);

  if (number_convert == 41) {
    print('Error เนื่องจากห้ามพิมเลข 41 !!');
  }else{
      print(number_convert);
  }
}
