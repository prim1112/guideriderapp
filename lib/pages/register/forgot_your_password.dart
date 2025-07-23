import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/homepage.dart';

class Forgot_your_password extends StatefulWidget {
  const Forgot_your_password({super.key});

  @override
  State<Forgot_your_password> createState() => _Forgot_your_passwordState();
}

class _Forgot_your_passwordState extends State<Forgot_your_password> {
  @override
  Widget build(BuildContext context) {
    // ดึงขนาดหน้าจอ
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff71B1F2),
        title: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xff71B1F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(0, 50, 0, 0)),
              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.9,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: const Color(0xfffafafa),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.start, //widget เรียงจากบนลงล่าง
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //widget ชิดซ้ายทั้งหมด
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                          child: Text(
                            'ลืมรหัสผ่าน',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3629B7),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                          child: Text(
                            'รีเซ็ตรหัสผ่าน?',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 7, 0, 0),
                          child: Text(
                            '"กรอกอีเมลของคุณแล้วเราจะส่งลิงก์สำหรับตั้งค่ารหัสผ่านใหม่ให้       คุณโปรดป้อนข้อมูลของคุณเพื่อรับลิงก์รีเซ็ตรหัสผ่าน"',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff343434),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 50, 50, 0),
                              child: Text(
                                'ป้อนที่อยู่อีเมล',
                                style: TextStyle(
                                  color: Color(0xff616161),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              controller: null,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Color(0xff343434),
                                    width: 1,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Color(0xffcfd8dc),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100, 60, 0, 0),
                          child: SizedBox(
                            width: 150,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff71B1F2),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text(
                                'ขั้นตอนต่อไป',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
