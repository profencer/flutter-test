import 'agent.dart';
import 'indication.dart';

class MedicalAppointment {
  MedicalAppointment({
    this.title,
    this.date,
    this.doctor,
    this.medicalIndications,
  });

  final String? title;
  DateTime? date;
  final Agent? doctor;
  final List<MedicalIndication>? medicalIndications;

  static final _listIndications = [
    MedicalIndication.service,
    MedicalIndication.service,
  ];

  static final nextAppointment = MedicalAppointment(
    title: 'Развальцовка очка',
    date: DateTime.now().add(const Duration(days: 30)),
    doctor: Agent.drRichard,
    medicalIndications: _listIndications,
  );

  static final skinCareAppointment = MedicalAppointment(
    title: 'Skin care',
    date: DateTime.now().subtract(const Duration(days: 10)),
    doctor: Agent.drLiliana,
    medicalIndications: _listIndications,
  );

  static final sutureAppointment = MedicalAppointment(
    title: 'Suture revision',
    date: DateTime.now().subtract(const Duration(days: 30)),
    doctor: Agent.drEdward,
    medicalIndications: _listIndications,
  );

  static final childAppointment = MedicalAppointment(
    title: 'Kid Vaccine',
    date: DateTime.now().subtract(const Duration(days: 50)),
    doctor: Agent.drJulissa,
    medicalIndications: _listIndications,
  );

  static final listAppointment = [
    skinCareAppointment,
    sutureAppointment,
    childAppointment,
  ];
}