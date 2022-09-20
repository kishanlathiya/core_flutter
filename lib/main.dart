import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Otp(),
    ),
  );
}

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  Random random = Random();
  int length = 0;
  var number = [];
  TextEditingController controller = TextEditingController();

  // var rndnumber="";
  // var rnd= new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172b),
      body: Container(
        // padding: EdgeInsets.all(130),
        // color: Color(0xff15172b),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "OTP Generator",
              style: TextStyle(
                  color: Color(
                    0xfff6db87,
                  ),
                  fontSize: 24),
            ),
            //SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 260,
                  child: TextField(
                    controller: controller,
                    autofocus: true,
                    onChanged: (val) {
                      length = int.parse(val);
                    },
                    maxLength: 1,
                    style: TextStyle(
                      color: Color(0xfff6db87),
                      fontSize: 15,
                    ),
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0xfff6db87),
                    decoration: InputDecoration(
                      hintText: "Enter OTP Length",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfff6db87),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  number.clear();
                  if (length > 3 && length < 9) {
                    for (int i = 0; i < length; i++) {
                      number.add(random.nextInt(9));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter length between 4 to 8 digit")));
                  }
                });
              },
              child: Ink(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffffe8b8),
                        Color(0xfff6db87),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      color: Color(0xff15172b),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffffe8b8),
                        Color(0xfff6db87),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: number
                        .map(
                          (e) => Text(
                        "$e",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  number.clear();
                  controller.clear();
                });
              },
              child: Ink(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffffe8b8),
                        Color(0xfff6db87),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Color(0xff15172b),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
