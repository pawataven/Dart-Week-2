//NOTE - เขียนโปรแกรมเพื่อสร้างตารางสูตรคูณ จากการสุ่มตัวเลข 2 - 20
import 'dart:math';

void main(List<String> args) {
  Random random = Random(); //NOTE - คำสั่งตัวเเปรสำหรับสุ่ม

  int randomNum = random.nextInt(19) +
      2; //NOTE - สร้างตัวเลขสุ่มแบบเต็มจำนวนระหว่าง 2 ถึง 20  และเก็บค่าในตัวแปร randomNum

  for (var i =1; i < 12; i++) {
    int total = randomNum * i;

    print('${randomNum} x ${i} = ${total}');
  }

}
