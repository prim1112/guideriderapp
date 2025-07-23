import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/guide_or_customer.dart';

class Register_customer extends StatefulWidget {
  const Register_customer({super.key});

  @override
  State<Register_customer> createState() => _Register_customerState();
}

class _Register_customerState extends State<Register_customer> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
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
                        'สมัครสมาชิก',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
