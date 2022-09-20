import 'package:flutter/material.dart';
import 'globalclass.dart';

class lostPage extends StatefulWidget {
  const lostPage({Key? key}) : super(key: key);

  @override
  State<lostPage> createState() => _lostPageState();
}

class _lostPageState extends State<lostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/lose.png"),
            ),
            const SizedBox(height: 40),
            const Text(
              "oops! \n\n Sorry, You Lost the Game :(",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white.withOpacity(0.2),
                onPrimary: Colors.white.withOpacity(0.8),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                setState(() {
                  Global.initialQuestion = 0;
                  Global.wonPrice = 500;
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                });
              },
              icon: const Icon(
                Icons.refresh,
                size: 40,
                color: Colors.white,
              ),
              label: const Text("Try Again",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
