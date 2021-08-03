class Assets {
  static const _path = 'assets';

  static _Images get images => _Images(_path);
}

class _Images {
  late final String _path;

  _Images(String basePath) {
    _path = basePath + '/images';
  }

  String get appLogo => '$_path/app_logo.png';
}
