import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/register_customer.dart';
import 'package:flutter_application_1/pages/register/register_guide.dart';

class Guide_or_customer extends StatefulWidget {
  const Guide_or_customer({super.key});

  @override
  State<Guide_or_customer> createState() => _Guide_or_customerState();
}

class _Guide_or_customerState extends State<Guide_or_customer> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff71B1F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 200),
            SizedBox(
              width: double.infinity,
              height: screenHeight * 0.9,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: const Color(0xfffafafa),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'ลงทะเบียนสมาชิก',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3629B7),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'กรุณาเลือกประเภทของผู้ใช้ที่ต้องการลงทะเบียน',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff343434),
                        ),
                      ),
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 170,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register_customer(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff71B1F2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 4,
                                padding: EdgeInsets.zero,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                      ),
                                      child: Text(
                                        'ผู้ใช้สมาชิก',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfffafafa),
                                        ),
                                        overflow: TextOverflow
                                            .ellipsis, // กันข้อความล้น
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Image.asset(
                                    'assets/images/add.png',
                                    width: 90,
                                    height: 110,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 170,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register_guide(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfffafafa),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 4,
                                padding: EdgeInsets.zero,
                              ),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 80, 10),
                                    child: Text(
                                      'ไกด์',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff71B1F2),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/tour-guide.png',
                                    width: 100,
                                    height: 120,
                                  ),
                                ],
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
    );
  }
}
