import 'package:floor/floor.dart';

@entity
class BagEntity {
  @primaryKey
  final int id;
  final String titleKey;
  final String descriptionKey;
  final bool isCompleted;

  BagEntity({
    required this.id,
    required this.titleKey,
    required this.descriptionKey,
    required this.isCompleted,
  });
}


final List<BagEntity> bagList = [
  BagEntity(
    id: 1,
    titleKey: "bagTitle1",
    descriptionKey: "bagDescription1",
    isCompleted: false,
  ),
  BagEntity(
    id: 2,
    titleKey: "bagTitle2",
    descriptionKey: "bagDescription2",
    isCompleted: false,
  ),
  BagEntity(
    id: 3,
    titleKey: "bagTitle3",
    descriptionKey: "bagDescription3",
    isCompleted: false,
  ),
  BagEntity(
    id: 4,
    titleKey: "bagTitle4",
    descriptionKey: "bagDescription4",
    isCompleted: false,
  ),
  BagEntity(
    id: 5,
    titleKey: "bagTitle5",
    descriptionKey: "bagDescription5",
    isCompleted: false,
  ),
  BagEntity(
    id: 6,
    titleKey: "bagTitle6",
    descriptionKey: "bagDescription6",
    isCompleted: false,
  ),
  BagEntity(
    id: 7,
    titleKey: "bagTitle7",
    descriptionKey: "bagDescription7",
    isCompleted: false,
  ),
  BagEntity(
    id: 8,
    titleKey: "bagTitle8",
    descriptionKey: "bagDescription8",
    isCompleted: false,
  ),
  BagEntity(
    id: 9,
    titleKey: "bagTitle9",
    descriptionKey: "bagDescription9",
    isCompleted: false,
  ),
  BagEntity(
    id: 10,
    titleKey: "bagTitle10",
    descriptionKey: "bagDescription10",
    isCompleted: false,
  ),
  BagEntity(
    id: 11,
    titleKey: "bagTitle11",
    descriptionKey: "bagDescription11",
    isCompleted: false,
  ),
  BagEntity(
    id: 12,
    titleKey: "bagTitle12",
    descriptionKey: "bagDescription12",
    isCompleted: false,
  ),
  BagEntity(
    id: 13,
    titleKey: "bagTitle13",
    descriptionKey: "bagDescription13",
    isCompleted: false,
  ),
  BagEntity(
    id: 14,
    titleKey: "bagTitle14",
    descriptionKey: "bagDescription14",
    isCompleted: false,
  ),
  BagEntity(
    id: 15,
    titleKey: "bagTitle15",
    descriptionKey: "bagDescription15",
    isCompleted: false,
  ),
  BagEntity(
    id: 16,
    titleKey: "bagTitle16",
    descriptionKey: "bagDescription16",
    isCompleted: false,
  ),
  BagEntity(
    id: 17,
    titleKey: "bagTitle17",
    descriptionKey: "bagDescription17",
    isCompleted: false,
  ),
  BagEntity(
    id: 18,
    titleKey: "bagTitle18",
    descriptionKey: "bagDescription18",
    isCompleted: false,
  ),
  BagEntity(
    id: 19,
    titleKey: "bagTitle19",
    descriptionKey: "bagDescription19",
    isCompleted: false,
  ),
];
