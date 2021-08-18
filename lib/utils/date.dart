part of moralar_widgets;

class MoralarDate {
  static int dateForSeconds(String ddMMYYYY) {
    if (ddMMYYYY.isNotEmpty) {
      final date = DateFormat('dd/MM/yyyy').parse(ddMMYYYY);
      return (date.millisecondsSinceEpoch / 1000).round();
    } else {
      return 0;
    }
  }

  static String secondsForDate(int seconds) {
    if (seconds > 0) {
      final date = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
      final formatDate = DateFormat('dd/MM/yyyy').format(date);
      return formatDate;
    } else {
      return '';
    }
  }

  static bool validateDate(int dateSeconds) {
    final now = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    if (dateSeconds > now || dateSeconds == 0) {
      return true;
    } else {
      return false;
    }
  }

  static bool verifyDayMonth(String ddMMYYYY) {
    final int day = int.parse('${ddMMYYYY[0]}${ddMMYYYY[1]}');
    final int month = int.parse('${ddMMYYYY[3]}${ddMMYYYY[4]}');
    if (month > 0 && month <= 12 && day > 0 && day <= 31) {
      return true;
    } else {
      return false;
    }
  }
}
