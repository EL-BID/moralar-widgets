part of moralar_widgets;

class Urls {
  static _FamilyUrls get family => _FamilyUrls();

  static _TTSUrls get tts => _TTSUrls();
}

class _FamilyUrls {
  final token = '/Family/Token';
  final getInfo = '/Family/GetUser';
  final validateHolderCpf = '/Family/ExistCpf';
  final tokenByBirthday = '/Family/TokenByBirthday';
  final firstAccess = '/Family/FirstAccess';
  final edit = '/Family/Edit';
  final forgotPassword = '/Family/ForgotPassword';
  final scheduling = '/Schedule/GetHistoryByFamily';
  final timeline = '/Family/TimeLineProcessMandatory';
}

class _TTSUrls {
  final token = '/Profile/Token';
  final getInfo = '/Profile/GetInfo';
}
