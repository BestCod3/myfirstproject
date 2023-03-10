import 'package:counter1/pages/thirdPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({this.pushNum});
  int? pushNum;
  @override
  //int num=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Задание №2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto-Regular',
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  //декорация за радиус цвет итд.
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                height: 44,
                child: Center(
                  child: Text(
                    'Сан: $pushNum',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ThirdPage(),
            ),
          );
        },
        elevation: 0,
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
//padding - высота и ширина границ одновременно(снаружи)!
//margin - высота и ширина границ одновременно (изнутри)!