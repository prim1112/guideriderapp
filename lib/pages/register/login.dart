import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/guide_or_customer.dart';
import 'package:flutter_application_1/pages/register/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0)),
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
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            'ยินดีต้อนรับ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3629B7),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            'กรุณาลงชื่อเข้าใช้บัญชีที่มีอยู่ของคุณ',
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
                                'อีเมล',
                                style: TextStyle(
                                  color: Color(0xff616161),
                                  fontSize: 15,
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 20, 50, 0),
                              child: Text(
                                'รหัสผ่าน',
                                style: TextStyle(
                                  color: Color(0xff616161),
                                  fontSize: 15,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0, right: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'ลืมรหัสผ่าน',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffcfd8dc),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                          child: SizedBox(
                            width: 350,
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
                                'เข้าสู่ระบบ',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'คุณยังไม่เป็นสมาชิกใช่หรือไม่? ',
                              style: TextStyle(fontSize: 12), // ลดขนาดฟอนต์
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Guide_or_customer(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'สมัครสมาชิก',
                                  style: TextStyle(
                                    fontSize: 14, // ขนาดฟอนต์ของปุ่ม
                                    color: Color(0xFF3629B7),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
