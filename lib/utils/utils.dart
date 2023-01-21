import 'package:appointment/models/customer.dart';

class MdUtils {
  static String formatToTextDate(DateTime date) {
    return '${date.year} ${months[date.month]} ${date.day}';
  }

  static String extractHourDate(DateTime date) {
    final auxHour = date.hour < 10 ? 0 : '';
    final auxMinute = date.minute < 10 ? 0 : '';
    return '$auxHour${date.hour}:$auxMinute${date.minute}';
  }

  static const months = {
    1: 'Января',
    2: 'Февраля',
    3: 'Марта',
    4: 'Апреля',
    5: 'Мая',
    6: 'Июня',
    7: 'Июля',
    8: 'Август',
    9: 'Сентябрь',
    10: 'Октябрь',
    11: 'Ноябрь',
    12: 'Декабрь',
  };

  static String displayMedicalState(MedicalState i) {
    return {
      MedicalState.alert: 'внимание',
      MedicalState.danger: 'опасно',
      MedicalState.normal: 'норма',
    }[i]!;
  }
}
