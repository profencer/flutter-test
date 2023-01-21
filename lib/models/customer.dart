import 'package:appointment/models/appointment.dart';
import 'package:appointment/models/check.dart';
export 'appointment.dart';
export 'check.dart';

class MedicalPatient {
  const MedicalPatient({
    this.name,
    this.lastName,
    this.email,
    this.photoUrl,
    this.phone,
    this.medicalChecks,
    this.appointmentHistory,
    this.nextAppointment,
  });

  final String? name;
  final String? lastName;
  final String? email;
  final String? photoUrl;
  final String? phone;
  final List<Check>? medicalChecks;
  final List<MedicalAppointment>? appointmentHistory;
  final MedicalAppointment? nextAppointment;

  static final currentPatient = MedicalPatient(
    name: 'Kevin',
    lastName: 'Melendez',
    email: 'kevinmdezhdez@gmail.com',
    photoUrl:
        'https://i.pravatar.cc/300',
    appointmentHistory: MedicalAppointment.listAppointment,
    nextAppointment: MedicalAppointment.nextAppointment,
    phone: '+52741137588',
    medicalChecks: const [
      Check(check: TypeCheck.brakes, value: 'Хуевые'),
      Check(check: TypeCheck.engine, value: 'Просто пиздец'),
      Check(check: TypeCheck.tyre, value: 'На выброс'),
      Check(check: TypeCheck.wheel, value: 'Пойдет'),
    ],
  );
}
