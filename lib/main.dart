import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ConfettiSample());

class ConfettiSample extends StatelessWidget {
  const ConfettiSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Confetti',
        home: Scaffold(
          backgroundColor: Colors.grey[900],
          body: MyApp(),
        ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfettiController _controllerCenter;
  late ConfettiController _controllerCenterRight;
  late ConfettiController _controllerCenterLeft;
  late ConfettiController _controllerTopCenter;
  late ConfettiController _controllerBottomCenter;

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(milliseconds: 1000));
    _controllerTopCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerBottomCenter =
        ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    _controllerTopCenter.dispose();
    _controllerBottomCenter.dispose();
    super.dispose();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9003906, size.height * 0.6816406);
    path_0.lineTo(size.width * 0.8339844, size.height * 0.6432813);
    path_0.arcToPoint(Offset(size.width * 0.8748828, size.height * 0.6120313),
        radius:
            Radius.elliptical(size.width * 0.1748633, size.height * 0.1748633),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8333203, size.height * 0.5368164),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7580273, size.height * 0.5995117),
        radius:
            Radius.elliptical(size.width * 0.2609766, size.height * 0.2609766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5859375, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.7579883, size.height * 0.4006641);
    path_0.arcToPoint(Offset(size.width * 0.8332813, size.height * 0.4633594),
        radius:
            Radius.elliptical(size.width * 0.2606641, size.height * 0.2606641),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8748438, size.height * 0.3881445),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8339453, size.height * 0.3568945),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.9003516, size.height * 0.3185352);
    path_0.arcToPoint(Offset(size.width * 0.8574219, size.height * 0.2441406),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.lineTo(size.width * 0.7910156, size.height * 0.2824805);
    path_0.arcToPoint(Offset(size.width * 0.7843359, size.height * 0.2314062),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7421875, size.height * 0.1875000),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.7413867, size.height * 0.1875000);
    path_0.arcToPoint(Offset(size.width * 0.6984180, size.height * 0.2296680),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7150195, size.height * 0.3261719),
        radius:
            Radius.elliptical(size.width * 0.2609570, size.height * 0.2609570),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5429688, size.height * 0.4255664);
    path_0.lineTo(size.width * 0.5429688, size.height * 0.2269141);
    path_0.arcToPoint(Offset(size.width * 0.6349023, size.height * 0.1930664),
        radius:
            Radius.elliptical(size.width * 0.2607422, size.height * 0.2607422),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5905469, size.height * 0.1194531),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5429688, size.height * 0.1391992),
        radius:
            Radius.elliptical(size.width * 0.1749219, size.height * 0.1749219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5429688, size.height * 0.07421875);
    path_0.arcToPoint(Offset(size.width * 0.4570313, size.height * 0.07421875),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4570313, size.height * 0.1391992);
    path_0.arcToPoint(Offset(size.width * 0.4094531, size.height * 0.1194531),
        radius:
            Radius.elliptical(size.width * 0.1749219, size.height * 0.1749219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3650977, size.height * 0.1930664),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4570313, size.height * 0.2269141),
        radius:
            Radius.elliptical(size.width * 0.2607422, size.height * 0.2607422),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4570313, size.height * 0.4255664);
    path_0.lineTo(size.width * 0.2849805, size.height * 0.3261719);
    path_0.arcToPoint(Offset(size.width * 0.3016211, size.height * 0.2296289),
        radius:
            Radius.elliptical(size.width * 0.2609570, size.height * 0.2609570),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2586523, size.height * 0.1874609),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.2578125, size.height * 0.1874609);
    path_0.arcToPoint(Offset(size.width * 0.2156445, size.height * 0.2312305),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2089844, size.height * 0.2823828),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.1425781, size.height * 0.2441406);
    path_0.arcToPoint(Offset(size.width * 0.09960938, size.height * 0.3185547),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.lineTo(size.width * 0.1660156, size.height * 0.3569141);
    path_0.arcToPoint(Offset(size.width * 0.1251172, size.height * 0.3881641),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1666797, size.height * 0.4633789),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2419727, size.height * 0.4006836),
        radius:
            Radius.elliptical(size.width * 0.2609766, size.height * 0.2609766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4140625, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.2420117, size.height * 0.5993359);
    path_0.arcToPoint(Offset(size.width * 0.1667187, size.height * 0.5366406),
        radius:
            Radius.elliptical(size.width * 0.2609766, size.height * 0.2609766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1251562, size.height * 0.6118555),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1660547, size.height * 0.6431055),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.09960938, size.height * 0.6816406);
    path_0.arcToPoint(Offset(size.width * 0.1425781, size.height * 0.7560547),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.lineTo(size.width * 0.2089844, size.height * 0.7177148);
    path_0.arcToPoint(Offset(size.width * 0.2156641, size.height * 0.7687891),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2578125, size.height * 0.8125000),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.2586133, size.height * 0.8125000);
    path_0.arcToPoint(Offset(size.width * 0.3015820, size.height * 0.7703320),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2849805, size.height * 0.6738281),
        radius:
            Radius.elliptical(size.width * 0.2609570, size.height * 0.2609570),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4570313, size.height * 0.5744336);
    path_0.lineTo(size.width * 0.4570313, size.height * 0.7730859);
    path_0.arcToPoint(Offset(size.width * 0.3650977, size.height * 0.8069336),
        radius:
            Radius.elliptical(size.width * 0.2607422, size.height * 0.2607422),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4094531, size.height * 0.8805469),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4570313, size.height * 0.8608008),
        radius:
            Radius.elliptical(size.width * 0.1749219, size.height * 0.1749219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4570313, size.height * 0.9257813);
    path_0.arcToPoint(Offset(size.width * 0.5429688, size.height * 0.9257813),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5429688, size.height * 0.8608008);
    path_0.arcToPoint(Offset(size.width * 0.5905469, size.height * 0.8805469),
        radius:
            Radius.elliptical(size.width * 0.1749219, size.height * 0.1749219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6349023, size.height * 0.8069336),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5429688, size.height * 0.7730859),
        radius:
            Radius.elliptical(size.width * 0.2607422, size.height * 0.2607422),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5429688, size.height * 0.5744336);
    path_0.lineTo(size.width * 0.7150195, size.height * 0.6738281);
    path_0.arcToPoint(Offset(size.width * 0.6983789, size.height * 0.7703711),
        radius:
            Radius.elliptical(size.width * 0.2609570, size.height * 0.2609570),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7413477, size.height * 0.8125391),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.7421875, size.height * 0.8125391);
    path_0.arcToPoint(Offset(size.width * 0.7843555, size.height * 0.7687695),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7910156, size.height * 0.7176172),
        radius:
            Radius.elliptical(size.width * 0.1752734, size.height * 0.1752734),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8574219, size.height * 0.7559570);
    path_0.arcToPoint(Offset(size.width * 0.9003906, size.height * 0.6816406),
        radius: Radius.elliptical(
            size.width * 0.04296875, size.height * 0.04296875),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.close();
    // path.close();
    return path_0;
  }

  // Path drawCake() {

  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          //CENTER -- Blast
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _controllerCenter,
              blastDirectionality: BlastDirectionality
                  .explosive, // don't specify a direction, blast randomly
              shouldLoop:
                  false, // start again as soon as the animation is finished
              colors: const [
                Colors.white
              ], // manually specify the colors to be used
              createParticlePath: drawStar, // define a custom shape/path.
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  _controllerCenter.play();
                },
                child: _display('blast\nstars')),
          ),

          //CENTER RIGHT -- Emit left
          Align(
            alignment: Alignment.centerRight,
            child: ConfettiWidget(
              confettiController: _controllerCenterRight,
              blastDirection: pi, // radial value - LEFT
              particleDrag: 0.05, // apply drag to the confetti
              emissionFrequency: 0.05, // how often it should emit
              numberOfParticles: 20, // number of particles to emit
              gravity: 0.05, // gravity - or fall speed
              shouldLoop: false,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink
              ], // manually specify the colors to be used
              // strokeWidth: 1,
              // strokeColor: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  _controllerCenterRight.play();
                },
                child: _display('pump left')),
          ),

          //CENTER LEFT - Emit right
          Align(
            alignment: Alignment.centerLeft,
            child: ConfettiWidget(
              confettiController: _controllerCenterLeft,
              blastDirection: 0, // radial value - RIGHT
              emissionFrequency: 0.6,
              minimumSize: const Size(10,
                  10), // set the minimum potential size for the confetti (width, height)
              maximumSize: const Size(50,
                  50), // set the maximum potential size for the confetti (width, height)
              numberOfParticles: 1,
              gravity: 0.1,
              particleDrag: 0,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {
                  _controllerCenterLeft.play();
                },
                child: _display('singles')),
          ),

          //TOP CENTER - shoot down
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _controllerTopCenter,
              blastDirection: pi / 2,
              maxBlastForce: 5, // set a lower max blast force
              minBlastForce: 2, // set a lower min blast force
              emissionFrequency: 0.01,
              numberOfParticles: 10, // a lot of particles at once
              gravity: 1,
              createParticlePath: drawStar,
              colors: const [Colors.white],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: TextButton(
                onPressed: () {
                  _controllerTopCenter.play();
                },
                child: _display('goliath')),
          ),
          //BOTTOM CENTER
          Align(
            alignment: Alignment.bottomCenter,
            child: ConfettiWidget(
              minimumSize: const Size(50, 40),
              maximumSize: const Size(50, 40),
              confettiController: _controllerBottomCenter,
              blastDirection: -pi / 2,
              emissionFrequency: 0.01,
              numberOfParticles: 20,
              maxBlastForce: 100,
              minBlastForce: 80,
              gravity: 0.3,
              createParticlePath: drawStar,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
                onPressed: () {
                  _controllerBottomCenter.play();
                },
                child: _display('hard and infrequent')),
          ),
        ],
      ),
    );
  }

  Text _display(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
