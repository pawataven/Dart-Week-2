// TODO - เขียนโปรแกรมพิมพ์ชื่อนักศึกษา 100 ครั้ง โดยใช้ do-while

import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter Your Name:=> ');
  String? name = stdin.readLineSync()!;

  int number_count = 1;

  do {
    number_count++;
    print(name);
  } while (number_count <= 100);

  print('Run complete');
}