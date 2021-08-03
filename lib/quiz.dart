part of moralar_widgets;

class Quiz {
  static String statusName(int status) {
    if (status == 0) {
      return 'Respondido';
    } else if (status == 1) {
      return 'Não respondido';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 0) {
      return Color(0xFF06b12e);
    } else if (status == 1) {
      return Color(0xFFfb2a47);
    } else {
      return Colors.white;
    }
  }
}
