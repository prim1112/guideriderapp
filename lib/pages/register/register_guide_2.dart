import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/register_guide.dart';

class Register_guide_2 extends StatefulWidget {
  const Register_guide_2({super.key});

  @override
  State<Register_guide_2> createState() => _Register_guide_2State();
}

class _Register_guide_2State extends State<Register_guide_2> {
  File? image;
  String? selectedGender;
  final List<String> genderList = [
    'ประเภททั่วไป บัตรสีบรอนซ์เงิน',
    'ประเภทเฉพาะภูมิภาค ภาคกลาง บัตรสีเหลือง ',
    'ประเภทเฉพาะภูมิภาค ภาคเหนือ บัตรสีเขียว ',
    'ประเภทเฉพาะภูมิภาค ภาคตะวันออกเฉียงเหนือ บัตรสีส้ม ',
    'ประเภทเฉพาะภูมิภาค ภาคใต้ บัตรสีฟ้า ',
    'ประเภทท้องถิ่น บัตรสีน้ำตาล',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              MaterialPageRoute(builder: (context) => const Register_guide()),
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
              Text(
                'อัปโหลดใบอนุญาตไกด์',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: (image != null)
                        ? Image.file(image!, fit: BoxFit.cover)
                        : Image.asset(
                            'assets/images/dash line.png',
                            fit: BoxFit.cover,
                          ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // TODO: ทำสิ่งที่คุณต้องการ เช่น เลือกรูปภาพ
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.lightBlue,
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ), // ทำให้ปุ่มเป็นวงรี
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/image.png',
                          width: 20,
                          height: 20,
                          color: Colors.lightBlue,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'เพิ่มรูปภาพ',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // TODO: ทำสิ่งที่คุณต้องการ เช่น เลือกรูปภาพ
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.lightBlue,
                        width: 0.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ), // ทำให้ปุ่มเป็นวงรี
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // ให้พอดีกับเนื้อหา
                      children: [
                        Image.asset(
                          'assets/images/add-photo.png',
                          width: 20,
                          height: 20,
                          color: Colors.lightBlue,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'ถ่ายรูป',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'เลือกประเภทใบอนุญาตมัคคุเทศก',
                style: TextStyle(color: Color(0xff616161), fontSize: 15),
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
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
