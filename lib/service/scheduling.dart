part of moralar_widgets;

class Scheduling {
  static String statusName(int status) {
    if (status == 0) {
      return 'Aguardando Confirmação';
    } else if (status == 1) {
      return 'Confirmado';
    } else if (status == 2) {
      return 'Aguardando Reagendamento';
    } else if (status == 3) {
      return 'Reagendado';
    } else if (status == 4) {
      return 'Finalizado';
    } else {
      return '';
    }
  }

  static String statusSubject(int status) {
    if (status == 0) {
      return 'Visita do TTS';
    } else if (status == 1) {
      return 'Reunião com TTS';
    } else if (status == 2) {
      return 'Reunião PGM';
    } else if (status == 3) {
      return 'Visita ao imóvel';
    } else if (status == 4) {
      return 'Escolha do imóvel';
    } else if (status == 5) {
      return 'Demolição';
    } else if (status == 6) {
      return 'Outros';
    } else if (status == 7) {
      return 'Mudança';
    } else if (status == 8) {
      return 'Acompanhamento pós-mudança';
    } else {
      return '';
    }
  }

  static Color statusColor(int status) {
    if (status == 0) {
      return MoralarColors.orangeYellow;
    } else if (status == 1) {
      return MoralarColors.kellyGreen;
    } else if (status == 2) {
      return MoralarColors.strawberry;
    } else if (status == 3 || status == 4) {
      return MoralarColors.brownGrey;
    } else {
      return Colors.white;
    }
  }
}
