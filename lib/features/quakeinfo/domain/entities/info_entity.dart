import 'package:floor/floor.dart';
import 'package:flutter/material.dart';

@entity
class InfoEntity {
  @primaryKey
  final int id;
  final String titleKey;
  final String descriptionKey;
  final int icon;

  InfoEntity({
    required this.id,
    required this.titleKey,
    required this.descriptionKey,
    required this.icon,
  });
}

final List<InfoEntity> infoList = [
  InfoEntity(
    id: 1,
    titleKey: 'infoTitle1',
    descriptionKey: 'infoDec1',
    icon: Icons.self_improvement.codePoint,
  ),
  InfoEntity(
    id: 2,
    titleKey: 'infoTitle2',
    descriptionKey: 'infoDec2',
    icon: Icons.security.codePoint,
  ),
  InfoEntity(
    id: 3,
    titleKey: 'infoTitle3',
    descriptionKey: 'infoDec3',
    icon: Icons.window.codePoint,
  ),
  InfoEntity(
    id: 4,
    titleKey: 'infoTitle4',
    descriptionKey: 'infoDec4',
    icon: Icons.elevator.codePoint,
  ),
  InfoEntity(
    id: 5,
    titleKey: 'infoTitle5',
    descriptionKey: 'infoDec5',
    icon: Icons.nature_people.codePoint,
  ),
  InfoEntity(
    id: 6,
    titleKey: 'infoTitle6',
    descriptionKey: 'infoDec6',
    icon: Icons.exit_to_app.codePoint,
  ),
  InfoEntity(
    id: 7,
    titleKey: 'infoTitle7',
    descriptionKey:
        'infoDec7',
    icon: Icons.medical_services.codePoint,
  ),
  InfoEntity(
    id: 8,
    titleKey: 'infoTitle8',
    descriptionKey: 'infoDec8',
    icon: Icons.info.codePoint,
  ),
];
