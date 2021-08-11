part of moralar_widgets;

class Urls {
  static _ResidentUrls get resident => _ResidentUrls();

  static _TTSUrls get tts => _TTSUrls();
}

class _ResidentUrls {
  final token = '/Family/Token';
  final getInfo = '/Family/GetInfo';
}

class _TTSUrls {
  final token = '/Profile/Token';
  final getInfo = '/Profile/GetInfo';
}
