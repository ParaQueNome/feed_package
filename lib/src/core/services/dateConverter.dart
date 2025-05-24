String getRelativeTime(dynamic dateTime) {
  if (dateTime is! DateTime) {
    if (dateTime is String) {
      dateTime = DateTime.tryParse(dateTime);
    } else {
      throw ArgumentError('O argumento deve ser uma String ou DateTime.');
    }
  }

  if (dateTime == null) {
    throw ArgumentError(
      'Não foi possível converter o argumento para DateTime.',
    );
  }

  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inDays > 0) {
    if (difference.inDays == 1) {
      return 'Há 1 dia';
    } else {
      return 'Há ${difference.inDays} dias';
    }
  } else if (difference.inHours > 0) {
    return 'Há ${difference.inHours} horas';
  } else if (difference.inMinutes > 0) {
    return 'Há ${difference.inMinutes} minutos';
  } else {
    return 'Agora';
  }
}
