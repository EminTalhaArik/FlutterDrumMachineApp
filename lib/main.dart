import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = new AudioCache();

  void sesiCal(String ses) {
    oynatici.play("$ses.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad(Colors.blueAccent, "bip"),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.red, "bongo"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad(Colors.pinkAccent, "clap1"),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.yellowAccent, "clap2"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad(Colors.greenAccent, "clap3"),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.purpleAccent, "crash"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad(Colors.grey, "how"),
                  ),
                  Expanded(
                    child: buildDrumPad(Colors.brown, "oobah"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(Color color, String sound) {
    return FlatButton(
      padding: EdgeInsets.all(8),
      onPressed: () {
        sesiCal(sound);
      },
      child: Container(
        color: color,
      ),
    );
  }
}
