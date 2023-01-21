import 'package:flutter/cupertino.dart' show IconData;
import 'package:appointment/utils/md_icons_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

enum AgentCategory {
  kCardiologist._(
    nameCategory: 'Развальцовка',
    doctors: 9,
    iconData: FontAwesome.car,
    specialists: 10,
    rawColor: 0xffFF565D,
  ),
  kPediatrician._(
    nameCategory: 'Шиномонтаж',
    doctors: 9,
    iconData: Icons.accessibility,
    specialists: 10,
    rawColor: 0xffFCD94A,
  ),
  kSurgeon._(
    nameCategory: 'Взлет',
    iconData: Icons.airport_shuttle,
    doctors: 9,
    specialists: 10,
    rawColor: 0xff1BCAB2,
  ),
  kUrologist._(
    nameCategory: 'Рубка',
    doctors: 9,
    iconData: Icons.assistant_photo,
    specialists: 10,
    rawColor: 0xff33b5e5,
  ),
  kAllergist._(
    nameCategory: 'Поддув',
    doctors: 9,
    iconData: Icons.accessibility,
    rawColor: 0xffFFaf00,
    specialists: 10,
  ),
  kDermatologist._(
    nameCategory: 'Кувалдирование',
    iconData: Icons.car_side,
    doctors: 9,
    rawColor: 0xffff6ad3,
    specialists: 10,
  ),
  kOphthalmologist._(
    nameCategory: 'Отцепка',
    doctors: 9,
    iconData: Icons.blur_circular,
    rawColor: 0xff28EB62,
    specialists: 10,
  ),
  kEndocrinologist._(
    nameCategory: 'Зацепка',
    doctors: 9,
    iconData: Icons.receipt,
    rawColor: 0xff993299,
    specialists: 10,
  );

  const AgentCategory._({
    this.iconData,
    this.nameCategory,
    this.specialists,
    this.doctors,
    this.rawColor,
  });

  final String? nameCategory;
  final int? specialists;
  final int? doctors;
  final int? rawColor;
  final IconData? iconData;

  static const categories = [
    kCardiologist,
    kPediatrician,
    kSurgeon,
    kUrologist,
    kAllergist,
    kDermatologist,
    kOphthalmologist,
    kEndocrinologist,
  ];
}
