import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.78),
        title: const SizedBox(
          width: 250,
          child: Center(
            child: Text(
              'Flutter hylophone',
              style: TextStyle(
                fontSize: 24,
                fontFamily: ('Roboto-Regular'),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not1.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(239, 68, 58, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not2.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(249, 151, 0, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not3.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(255, 233, 59, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not4.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(76, 176, 80, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not5.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(46, 150, 140, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not6.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(41, 150, 245, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not7.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.11,
              color: const Color.fromRGBO(155, 40, 177, 1),
            ),
          ),
          InkWell(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/not1.mp3"),
                showNotification: true,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.098,
              color: const Color.fromRGBO(0, 0, 0, 0.78),
            ),
          ),
        ],
      ),
    );
  }
}
