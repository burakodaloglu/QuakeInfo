import 'package:equatable/equatable.dart';

import '../../../../domain/entities/info_entity.dart';

abstract class LocalInfoEvent extends Equatable {
  final InfoEntity? info;

  const LocalInfoEvent({this.info});

  @override
  List<Object?> get props => [info];
}

class LocalInfoLoad extends LocalInfoEvent {
  const LocalInfoLoad();
}
