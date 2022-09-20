import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double height = 180;
  double weight = 60;
  double age = 28;
  double bmi = 0;
  double bmiHeight = 0;

  Color maleContainerColor = Color(0xff1d1e33);
  Color femaleContainerColor = Color(0xff1d1e33);
  Color maleIconTextColor = Colors.white;
  Color femaleIconTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff090e21),
      ),
      //backgroundColor: Colors.transparent,
      body: Container(
        color: Color(0xff090e21),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //female and male
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          femaleContainerColor = Color(0xff3b3c4d);
                          maleContainerColor = Color(0xff1d1e33);
                          femaleIconTextColor = Colors.red;
                          maleIconTextColor = Colors.white;
                        });
                      },
                      child: Ink(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: femaleContainerColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.female_sharp,
                                  size: 120, color: femaleIconTextColor),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: femaleIconTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        maleIconTextColor = Colors.red;
                        femaleIconTextColor = Colors.white;
                        maleContainerColor = Color(0xff3b3c4d);
                        femaleContainerColor = Color(0xff1d1e33);
                      });
                    },
                    child: Ink(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: maleContainerColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.male,
                                size: 120, color: maleIconTextColor),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 20,
                                color: maleIconTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //height
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "${height.toInt()}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                    )),
                                TextSpan(
                                    text: " cm",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                          ),
                          Slider(
                            min: 0,
                            max: 500,
                            activeColor: Color(0xfff5c1d1),
                            inactiveColor: Color(0xff555555),
                            value: height,
                            divisions: 500,
                            onChanged: (val) {
                              setState(() {
                                height = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              //weight and age
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${weight.toInt()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4c4f5e),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Color(0xfffffff),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6e6f7a),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Color(0xfff67fa4),
                                        fontSize: 35,
                                      ),
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
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${age.toInt()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          //age//
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4c4f5e),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Color(0xfffffff),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              InkWell(
                                // splashColor: Colors.lightBlue,
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6e6f7a),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Color(0xfff67fa4),
                                        fontSize: 35,
                                      ),
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "BMI = ${bmi.toStringAsFixed(2)} kg/m²",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              //calculate
              InkWell(
                onTap: () {
                  setState(() {
                    bmiHeight = height / 100;
                    bmi = weight / (bmiHeight * bmiHeight);
                  });
                },
                child: Ink(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffeb1555),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Calculate",
                      style: TextStyle(fontSize: 25, color: Colors.white),
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
