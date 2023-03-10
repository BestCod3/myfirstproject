import 'dart:math';

import 'package:counter1/pages/sixthPage.dart';
import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  int diceTapone = 1;
  int diceTaptwo = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Задание №5',
              style:
                  TextStyle(color: Colors.white, fontFamily: 'Roboto-Regular'),
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  child: Image.asset(
                    'assets/image/dice$diceTapone.png',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      final random2 = Random().nextInt(6) + 1;
                      final random1 = Random().nextInt(6) + 1;
                      diceTapone = random2;
                      diceTaptwo = random1;
                    });
                  },
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                child: Image.asset(
                  'assets/image/dice$diceTaptwo.png',
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    final random1 = Random().nextInt(6) + 1;
                    final random2 = Random().nextInt(6) + 1;
                    diceTaptwo = random1;
                    diceTapone = random2;
                  });
                },
              ),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 233, 59, 1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SixthPage(),
            ),
          );
        },
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
 // int dice = 1;
  //void update() {
  //  setState(() {});
 // }
 //pubdev
 //google fonts.lato()
//image.net из интернета фото
//rotateanimatedtext анимация текста