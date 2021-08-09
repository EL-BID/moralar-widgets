part of moralar_widgets;

class Assets {
  static const _path = 'assets';

  static _Images get images => _Images(_path);
}

class _Images {
  late final String _path;

  _Images(String basePath) {
    _path = '$basePath/images';
  }

  String get agendamento => '$_path/agendamento.png';

  String get appLogo => '$_path/app_logo.png';

  String get bolo => '$_path/bolo.png';

  String get confirmado => '$_path/confirmado.png';

  String get cursos => '$_path/cursos.png';

  String get enquetes => '$_path/enquetes.png';

  String get facebook => '$_path/facebook.png';

  String get instagram => '$_path/instagram.png';

  String get jogos => '$_path/jogos.png';

  String get videos => '$_path/videos.png';

  String get youtube => '$_path/youtube.png';
}
