class Assets {
  static const _path = 'assets';

  static _Images get images => _Images(_path);
  static String get packageName => 'moralar_widgets';
}

class _Images {
  late final String _path;

  _Images(String basePath) {
    _path = basePath + '/images';
  }

  String get agendamento => '$_path/agendamento.png';
  String get appLogo => '$_path/app_logo.png';
  String get cursos => '$_path/cursos.png';
  String get enquetes => '$_path/enquetes.png';
  String get jogos => '$_path/jogos.png';
  String get videos => '$_path/videos.png';
}
