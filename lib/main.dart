import 'package:flutter/material.dart';
import 'globalclass.dart';
import 'wonPage.dart';
import 'lostPage.dart';
import 'finalPage.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'wonPage': (context) => const wonPage(),
        'lostPage': (context) => const lostPage(),
        'finalPage': (context) => const finalPage(),
      },
    ),
  );
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Random random = Random();
  int randomColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //question
          IndexedStack(
            index: Global.initialQuestion,
            children: Global.allQuestions
                .map((e) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Global.color,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "${e['question']}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(1000);
                            Global.color = Color.fromRGBO(
                                255, randomColor, 164, 1);

                            if (e['response'] == "A") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('wonPage');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lostPage');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 1']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(1000);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 45, 1);

                            if (e['response'] == "B") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('wonPage');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lostPage');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 2']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(700);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 78, 1);

                            if (e['response'] == "C") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('wonPage');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lostPage');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 3']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(500);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 98, 1);

                            if (e['response'] == "D") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('wonPage');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lostPage');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 4']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
