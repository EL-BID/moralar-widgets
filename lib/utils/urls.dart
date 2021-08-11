part of moralar_widgets;

class Urls {
  static _ProfileUrls get resident => _ProfileUrls();

  static _TTSUrls get tts => _TTSUrls();
}

class _ProfileUrls {
  final token = '/Family/Token';
  final getInfo = '/Family/GetInfo';
}

class _TTSUrls {
  final token = '/Profile/Token';
  final getInfo = '/Profile/GetInfo';
}
