import 'dart:async';

void main() {
  StreamController<String> notificationController = StreamController<String>();

  notificationController.stream.listen(
    (notification) {
      print("การแจ้งเตือนใหม่: $notification");
    },
    onDone: () {
      print("ระบบแจ้งเตือน: ปิดสตรีมเรียบร้อยแล้ว");
    },
  );

  notificationController.add("คุณมีผู้ติดตามเพิ่ม 1 คน");
  notificationController.add("คุณ B*** ส่ง gift sub ให้สมาชิก 10 คน");
  notificationController.add("มีสตรีมเมอร์ Raid ให้ช่องของคุณ");

  notificationController.close();
}
