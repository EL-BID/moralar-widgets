part of moralar_widgets;

String statusName(int status) {
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

Color statusColor(int status) {
  if (status == 0) {
    return Color(0xFF06b12e);
  } else if (status == 1) {
    return Color(0xFFffaa00);
  } else if (status == 2) {
    return Color(0xFFfb2a47);
  } else if (status == 3) {
    return Color(0xFFb2b2b2);
  } else {
    return Colors.white;
  }
}
