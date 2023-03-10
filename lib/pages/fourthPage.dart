import 'package:counter1/pages/fifthPage.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 108, 92, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(5, 108, 92, 1),
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Задание №4',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto-Regular',
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Turat Alybaev',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pacifico'),
            ),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            // width: 375,
            height: 53,
            color: Colors.white,
            child: Center(
              child: Row(
                children: const [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.phone,
                    size: 40,
                    color: Color.fromRGBO(5, 108, 92, 1),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '+ 996 557 10 64 46',
                    style: TextStyle(
                        color: Color.fromRGBO(5, 108, 92, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            //width: 375,
            height: 53,
            color: Colors.white,
            child: Center(
              child: Row(
                children: const [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.mail,
                    size: 40,
                    color: Color.fromRGBO(5, 108, 92, 1),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Alybaevturat@gmail.com',
                    style: TextStyle(
                        color: Color.fromRGBO(5, 108, 92, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(5, 108, 92, 1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FifthPage(),
            ),
          );
        },
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
