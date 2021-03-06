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
  final changePassword = '/Family/ChangePassword';
  final scheduling = '/Schedule/GetScheduleByFamily';
  final schedulingTimeLine = '/Schedule/GetScheduleTimeLineByFamily';
  final schedulingHistory = '/Schedule/GetHistoryByFamily';
  final schedulingDetails = '/Schedule/Detail';
  final changeStatusSchedule = '/Schedule/ChangeStatus';
  final timeline = '/Family/TimeLineProcessMandatory';
  final properties = '/ResidencialProperty/GetResidencialByFilter';
  final interestProperty = '/PropertiesInterest/Register';
  final desinterestProperty = '/PropertiesInterest/InterestCancel';
  final matchs = '/PropertiesInterest/DetailFamilyMatch';
  final registeredNeighborhoods = '/ResidencialProperty/RegisteredNeighborhoods';
  final courses = '/Course/GetAll';
  final courseDetails = '/Course/Detail';
  final interestCourse = '/Course/RegisterFamilyToTrainning';
  final desinterestCourse = '/Course/CancelFamilyToTrainning';
  final videos = '/Video/GetAll';
  final registerView = '/Video/RegisterVideoViewed';
  final quiz = '/Quiz/GetQuizByFamily';
  final quizDetails = '/Quiz/Detail';
  final response = '/QuestionAnswer/GetResponses';
  final registerQuiz = '/QuestionAnswer/Register';
  final informative = '/Informative/GetAllInformativeByFamily';
  final changeInformative = '/Informative/ChangeStatusViewed';
  final notifications = '/Notification/GetAllNotificationByFamily';
  final registerUnRegisterDeviceId = '/Family/RegisterUnRegisterDeviceId';
  final readNotification = '/Notification/ChangeToReadInfo';
}

class _TTSUrls {
  final token = '/Profile/Token';
  final getInfo = '/Profile/GetInfo';
  final changePassword = '/Profile/ChangePassword';
  final forgotPassword = '/Profile/ForgotPassword';
  final edit = '/Profile/UpdateProfile';
  final quiz = '/QuizFamily/Available/';
  final timeline = '/Family/SearchTimeLine';
  final timelineData = '/Schedule/DetailTimeLine';
  final timelineExport = '/ApiMoralarHml/api/v1/Family/TimeLineExport';
  final nextStage = '/Schedule/ToStageChosenProperty';
  final matchs = '/PropertiesInterest/SearchMatch';
  final matchsFamily = '/PropertiesInterest/DetailFamilyMatch';
  final courseByFamily = '/Course/GetCourseByFamilyId';
  final quizByFamily = '/Quiz/GetQuizByFamilyId';
  final responseByFamily = '/QuestionAnswer/GetResponses';
  final detailsReunionPGM = '/Schedule/DetailTimeLineProcessReunionPGM';
  final changeTypeSubject = '/Schedule/ChangeSubject';
}
