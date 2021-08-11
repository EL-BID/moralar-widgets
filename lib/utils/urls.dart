part of moralar_widgets;

class Urls {
  static get profile => _Profile();
}

class _Profile {
  final login = '/api/v1/Profile/Token';
  final getInfo = '/api/v1/Profile/GetInfo';
}
