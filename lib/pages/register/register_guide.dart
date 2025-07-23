import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/guide_or_customer.dart';

class Register_guide extends StatefulWidget {
  const Register_guide({super.key});

  @override
  State<Register_guide> createState() => _Register_guideState();
}

class _Register_guideState extends State<Register_guide> {
  String? selectedGender;
  final List<String> genderList = ['ชาย', 'หญิง'];
  final List<String> monthList = [
    'มกราคม',
    'กุมภาพันธ์',
    'มีนาคม',
    'เมษายน',
    'พฤษภาคม',
    'มิถุนายน',
    'กรกฎาคม',
    'สิงหาคม',
    'กันยายน',
    'ตุลาคม',
    'พฤศจิกายน',
    'ธันวาคม',
  ];

  String? selectedMonth;

  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        title: const Text(
          'ลงทะเบียน',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Guide_or_customer(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: (image != null)
                        ? Image.file(image!, fit: BoxFit.cover)
                        : Image.asset(
                            'assets/images/user.png',
                            fit: BoxFit.cover,
                          ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: ClipOval(
                    child: (image != null)
                        ? Image.file(image!, fit: BoxFit.cover)
                        : Image.asset(
                            'assets/images/edit-text.png',
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
              Text(
                'ชื่อจริง นามสกุล',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
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
              SizedBox(height: 20),
              Text(
                'เบอร์โทรศัพท์',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  controller: null,
                  keyboardType: TextInputType.phone,
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
              SizedBox(height: 20),
              Text(
                'อีเมล',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
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
              SizedBox(height: 20),
              Text(
                'ที่อยู่ปัจจุบัน',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
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
              SizedBox(height: 20),
              Text(
                'เพศ',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
                width: 140,
                height: 40,
                child: DropdownButtonFormField<String>(
                  value: selectedGender ?? genderList.first,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xffcfd8dc), // ขอบปกติ
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 186, 185, 185), // ขอบโฟกัส
                        width: 1,
                      ),
                    ),
                  ),
                  items: genderList.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                'วันเกิด',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'วันที่',
                        style: TextStyle(
                          color: Color(0xff616161),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xff343434),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffcfd8dc),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'เดือน',
                        style: TextStyle(
                          color: Color(0xff616161),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        height: 40,
                        child: DropdownButtonFormField<String>(
                          value: selectedMonth ?? monthList.first,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffcfd8dc),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xff343434),
                                width: 1,
                              ),
                            ),
                          ),
                          items: monthList.map((String month) {
                            return DropdownMenuItem<String>(
                              value: month,
                              child: Text(month),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedMonth = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ปี(พ.ศ.)',
                        style: TextStyle(
                          color: Color(0xff616161),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xff343434),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffcfd8dc),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'รหัสผ่าน',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  controller: null,
                  obscureText: true,
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
              SizedBox(height: 20),
              Text(
                'ยืนยันรหัสผ่าน',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  controller: null,
                  obscureText: true,
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
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 80),
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
                      'ถัดไป',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
