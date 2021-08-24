part of moralar_widgets;

class CourseService {
  static String statusName(int status) {
    if (status == 0) {
      return 'Inscrito';
    } else if (status == 1) {
      return 'Aguardando na lista de espera';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 0) {
      return MoralarColors.kellyGreen;
    } else if (status == 1) {
      return MoralarColors.orangeYellow;
    } else {
      return Colors.white;
    }
  }

  static String courseGenre(int status) {
    if (status == 0) {
      return 'Feminino';
    } else if (status == 1) {
      return 'Masculino';
    } else if (status == 2) {
      return 'Outros';
    } else {
      return 'Todos';
    }
  }
}
