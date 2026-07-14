import 'dart:async';

Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("UserId ไม่ถูกต้อง (ต้องมากกว่า 0)");
  }

  return {"userId": userId, "name": "ชาติชาย", "email": "chartchai@email.com"};
}

void main() async {
  print("=== เริ่มการทดสอบกรณีปกติ ===");
  try {
    Map<String, dynamic> profile = await fetchProfile(1);
    print("ดึงข้อมูลสำเร็จ: $profile");
  } catch (error) {
    print("เกิดข้อผิดพลาด: $error");
  } finally {
    print("จบการทำงานของกรณีปกติ (finally ทำงานเสมอ)\n");
  }

  print("=== เริ่มการทดสอบกรณีเกิดข้อผิดพลาด ===");
  try {
    Map<String, dynamic> profile = await fetchProfile(0);
    print("ดึงข้อมูลสำเร็จ: $profile");
  } catch (error) {
    print("เกิดข้อผิดพลาด: ${error.toString()}");
  } finally {
    print("จบการทำงานของกรณีเกิดข้อผิดพลาด (finally ทำงานเสมอ)");
  }
}
