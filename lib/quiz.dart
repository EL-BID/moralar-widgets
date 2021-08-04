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
      return Assets.colors.kellyGreen;
    } else if (status == 1) {
      return Assets.colors.strawberry;
    } else {
      return Colors.white;
    }
  }
}
