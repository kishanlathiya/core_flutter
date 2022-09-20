import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorPalette(),
    ),
  );
}

class ColorPalette extends StatefulWidget {
  const ColorPalette({Key? key}) : super(key: key);

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {

  Random random = Random();
  int colorPalette = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xffd8e6f4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 70),
            Text(
              "Color Palette\n   Generator",
              style: TextStyle(
                color: Color(0xff3bb3f9),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70),
            Container(
              height: 75,
              width: 130,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, colorPalette, 20, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: 75,
              width: 130,
              color: Color.fromRGBO(colorPalette, 200, 45, 0.5),
            ),
            Container(
              height: 75,
              width: 130,
              color: Color.fromRGBO(10, colorPalette, 874, 1),
            ),
            Container(
              height: 75,
              width: 130,
              color: Color.fromRGBO(56, 788, colorPalette, 0.8),
            ),
            Container(
              height: 75,
              width: 130,
              color: Color.fromRGBO(150, 345, colorPalette, 1),
            ),
            Container(
              height: 75,
              width: 130,
              decoration: BoxDecoration(
                color: Color.fromRGBO(100, colorPalette, 38, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 70),
            InkWell(
              onTap: () {
                setState(() {
                  colorPalette = random.nextInt(500);
                });
              },
              child: Ink(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 230,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff3bb3f9),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      color: Color(0xff3bb3f9),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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
