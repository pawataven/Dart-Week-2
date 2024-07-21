// เขียนโปรแกรมเกมทายเครื่องหมายคํานวณ บวก ลบ คูณ และหาร จากการคํานวณตัวเลข 2 ค่าที่ได้จากการสุ่ม
// ระหว่าง 1 - 100 และสุ่มเลือกเครื่องหมายการคํานวณดังนี้
// var random = Random();
// List<String> operators = ['+', '-', '*', '/'];
// String operator = operators[random.nextInt(operators.length)];

import 'dart:math';
import 'dart:io';

void main() {
  // สร้างตัวแปรสุ่ม
  var random = Random();

  // รายชื่อเครื่องหมาย
  List<String> operators = ['+', '-', '*', '/'];

  // วนลูปเล่นเกม
  while (true) {
    // สร้างตัวเลขสุ่ม 2 ตัว
    int num1 = random.nextInt(100) + 1;
    int num2 = random.nextInt(100) + 1;

    // สุ่มเลือกเครื่องหมาย
    String operator = operators[random.nextInt(operators.length)];

    // คำนวณผลลัพธ์
    int result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print('ไม่สามารถหารด้วย 0 ได้');
          continue; // ข้ามไปยังรอบถัดไป
        }
        result = num1 ~/ num2;
        break;
      default:
        throw Exception('Invalid operator: $operator');
    }

    // แสดงโจทย์
    print('$num1 $operator $num2 = ');

    // รับคำตอบจากผู้ใช้
    int answer = int.tryParse(stdin.readLineSync()!) ?? 0;

    // ตรวจสอบคำตอบ
    if (answer == result) {
      print('คุณตอบถูก!');
    } else {
      print('คุณตอบผิด คำตอบที่ถูกคือ $result');
    }

    // ถามผู้ใช้ว่าต้องการเล่นต่อหรือไม่
    print('เล่นต่อ? (y/n)');
    String? input = stdin.readLineSync();
    if (input != 'y') {
      break; // ออกจากวนลูป
    }
  }

  print('จบเกม');
}
