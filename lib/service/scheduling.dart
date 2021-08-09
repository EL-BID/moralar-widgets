part of moralar_widgets;

class Scheduling {
  static String statusName(int status) {
    if (status == 0) {
      return 'Confirmado';
    } else if (status == 1) {
      return 'Aguardando Confirmação';
    } else if (status == 2) {
      return 'Aguardando Reagendamento';
    } else if (status == 3) {
      return 'Finalizado';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 0) {
      return MoralarColors.kellyGreen;
    } else if (status == 1) {
      return MoralarColors.orangeYellow;
    } else if (status == 2) {
      return MoralarColors.strawberry;
    } else if (status == 3) {
      return MoralarColors.brownGrey;
    } else {
      return Colors.white;
    }
  }
}
