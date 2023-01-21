enum TypeCheck {
  tyre,
  wheel,
  engine,
  brakes
}

enum MedicalState { normal, alert, danger }

class Check {
  const Check({this.check, this.value});

  final TypeCheck? check;
  final String? value;

  String? getSvgPath() {
    return {
      TypeCheck.tyre: 'assets/svg/medical/tyre.png',
      TypeCheck.wheel: 'assets/svg/medical/wheel.png',
      TypeCheck.engine: 'assets/svg/medical/car-engine.png',
      TypeCheck.brakes: 'assets/svg/medical/brake-disc.png',  
    }[check!];
  }

  // String? getMeasure() {
  //   return {
  //     TypeCheck.glucose: 'g/dL',
  //     TypeCheck.weight: 'kg',
  //     TypeCheck.hemoglobin: 'g/dL',
  //     TypeCheck.bloodPressure: 'mmHg',
  //     TypeCheck.electrocardiogram: 'hz',
  //     TypeCheck.cholesterol: 'mg/dL',
  //     TypeCheck.height: 'cm'
  //   }[check!];
  // }

  MedicalState getMedicalState() {
    switch (check!) {
      case TypeCheck.brakes:
        return MedicalState.alert;
      case TypeCheck.engine:
        return MedicalState.normal;
      case TypeCheck.tyre:
        return MedicalState.alert;
      case TypeCheck.wheel:
        return MedicalState.danger;
      
    }
  }
}