import 'dart:developer';
import 'package:counter1/pages/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _firstPageState();
}

// ignore: camel_case_types
class _firstPageState extends State<FirstPage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //весь интерфейс
      backgroundColor: Colors.white,

      appBar: AppBar(
        //шапка
        /* leading: IconButton(
          icon: Image.asset('assets/flutter-logo-768x768.png'),
          onPressed: () {},
        ),*/
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Задание №1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto-Regular',
            ),
          ),
        ),
      ),
      body: Center(
        //тело идет в центр интерфейса $-приглашение
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //kollona брем в еще один контейнер!
          children: [
            Container(
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
                  'Сан: $num',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              //{управление функцией} setstate-менять состояние
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      num++;
                    });
                    log('rabotaet');
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        //fstl
                        Radius.circular(50),
                      ),
                    ),
                    child: const Icon(
                      Icons.add, color: Colors.white,
                      //style: TextStyle(
                      //fontSize: 90,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            // nаvigator.push - вход вперед
            context, //navigator.pop - назад
            MaterialPageRoute(
              builder: (context) => SecondPage(
                pushNum: num,
              ),
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
