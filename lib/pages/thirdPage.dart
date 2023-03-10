import 'package:counter1/pages/fourthPage.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 185, 11, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(236, 185, 11, 1),
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Задание №3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/image/diamond.png',
                  width: 300,
                  height: 300,
                ),
                const Positioned(
                  bottom: 235,
                  left: 60,
                  child: Text(
                    'I’m Rich',
                    style: TextStyle(
                        //letterSpacing: 0, - расстояние между буквами
                        color: Colors.black,
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Sofia'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(236, 185, 11, 1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FourthPage(),
            ),
          );
        },
        elevation: 10,
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
