//todo 1. เขียนโปรแกรมเพื่อตรวจสอบข้อความภาษาอังกฤษที่รับทางคีย์บอร์ดว่าเป็นสระ และพยัญชนะ จํานวนกี่ตัว
//todo โดยใช้ if clase และ switch แนะนําให้ใช้ฟังก์ชัน substring(start,end) , length, toLowerCase()

import 'dart:io';

void main(List<String> args) {

  stdout.write('Input Your Name :> '); //NOTE - เป็นตัวป้อนข้อมูลเข้าไป
  String name = stdin.readLineSync()!; //NOTE - เป็นตัวรับข้อมูลเข้าไปในโปรเเกรม เเละนำไปเก็บบนตัวเเปร ที่ตั้งไว้ เเละ กำหนดค่า เช่น String int float double

  String lowerName = name.toLowerCase(); //NOTE - เเปลงอักษรใหญ่ให้เป็นตัวเล็ก
  print('คำภาษาอักฤษที่ถูกป้อนเข้าไป คือ = ${name}');
  print('ถูกเเปลงเป็นพิมเล็ก = ${lowerName}');

  // int subName = name.length; //NOTE - นับลำดับคำที่ถูกป้อนเข้าไปว่ามีกี่ตัว เเละเก็บในตัวเเปร

  // String word_count = name.substring(0, 1); //NOTE - ไล่คำไปเรื่อยๆทีละตัว

  int word_count_vowel = 0,
      word_count_consonant = 0; //NOTE - กำหนัดให้ค่า = 0 เพื่อเตรียมนับว่าสระ เเละ พยัญชนะมีกี่ตัว

  for (var i = 0; i < lowerName.length; i++) {
    String subName = lowerName.substring(i, i + 1);
    switch (subName) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        word_count_vowel += 1;
        break;
      default:
        word_count_consonant += 1;
    }
  }

  print('vowel = ${word_count_vowel} \nconsonant = ${word_count_consonant}');
}