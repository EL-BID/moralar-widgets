part of moralar_widgets;

class MoralarDate {
  static int dateForSeconds(String ddMMYYYY) {
    final date = DateFormat('dd/MM/yyyy').parse(ddMMYYYY);
    final seconds = (date.millisecondsSinceEpoch / 1000).round();
    return seconds;
  }

  static String secondsForDate(int seconds) {
    final date = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
    final formatDate = DateFormat('dd/MM/yyyy').format(date);
    return formatDate;
  }

  static bool validateDate(int dateSeconds) {
    final now = (DateTime.now().millisecondsSinceEpoch / 1000).round();

    if (dateSeconds > now) {
      return true;
    } else {
      return false;
    }
  }
}
