import 'package:flutter/material.dart';
import 'globalclass.dart';

class finalPage extends StatefulWidget {
  const finalPage({Key? key}) : super(key: key);

  @override
  State<finalPage> createState() => _finalPageState();
}

class _finalPageState extends State<finalPage> {
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
              child: Image.asset("assets/images/fire-cracker (1).png"),
            ),
            const SizedBox(height: 40),
            Text(
              "Congratulations!! \n\nYou Won\n  ₹${Global.wonPrice}",
              style: const TextStyle(color: Colors.white, fontSize: 25),
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
              label: const Text("Restart",
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
