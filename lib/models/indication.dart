enum MedicalIndication {
  service._(
    title: "Услуга",
    description: "Правка дисков",
    svgIconPath: 'assets/svg/medical/customer-support.png',
  ),
  service2._(
    title: "Услуга",
    description: "Замена масла",
    svgIconPath: 'assets/svg/medical/customer-support.png',
  ),
  kDrinkWater._(
    title: 'Drink water',
    description: 'Drink a lot of water',
    svgIconPath: 'assets/svg/medical/mi-drink-water.svg',
  ),
  kNoEatFastFood._(
    title: "No fast food",
    description: "Don't eat fast food",
    svgIconPath: 'assets/svg/medical/mi-no-fast-food.svg',
  ),
  kEatVegetables._(
    title: 'Eat diet',
    description: 'Eat more vegetables',
    svgIconPath: 'assets/svg/medical/mi-eat-vegatables.svg',
  ),
  kNoCoffee._(
    title: "No coffee",
    description: "Don't consume caffeine",
    svgIconPath: 'assets/svg/medical/mi-no-coffee.svg',
  ),
  kExercise._(
    title: 'Exercise',
    description: 'Make more exercise',
    svgIconPath: 'assets/svg/medical/mi-make-exercise.svg',
  );

  const MedicalIndication._({this.svgIconPath, this.description, this.title});

  final String? title;
  final String? svgIconPath;
  final String? description;
}