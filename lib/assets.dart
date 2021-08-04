import 'package:flutter/painting.dart';

class Assets {
  static const _path = 'assets';

  static _Images get images => _Images(_path);

  static _Colors get colors => _Colors();
}

class _Images {
  late final String _path;

  _Images(String basePath) {
    _path = '$basePath/images';
  }

  String get agendamento => '$_path/agendamento.png';
  String get appLogo => '$_path/app_logo.png';
  String get cursos => '$_path/cursos.png';
  String get enquetes => '$_path/enquetes.png';
  String get jogos => '$_path/jogos.png';
  String get videos => '$_path/videos.png';
}

class _Colors {
  final kellyGreen = const Color(0xff06b12e);
  final strawberry = const Color(0xfffb2a47);
  final blue = const Color(0xff1950ef);
  final waterBlue = const Color(0xff107ece);
  final brownishGrey = const Color(0xff707070);
  final darkBlueGrey = const Color(0xff0e1a29);
  final brownGrey = const Color(0xffb2b2b2);
  final algaeGreen = const Color(0xff25d366);
  final veryLightPink = const Color(0xffe9e9e9);
  final orangeYellow = const Color(0xffffaa00);
}
