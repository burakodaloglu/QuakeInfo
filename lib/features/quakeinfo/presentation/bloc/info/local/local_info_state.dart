import 'package:QuakeInfo/features/quakeinfo/domain/entities/info_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LocalInfoState extends Equatable {
  final List<InfoEntity>? info;

  const LocalInfoState({this.info});

  @override
  List<Object?> get props => [info];
}
class LocalInfoLoading extends LocalInfoState {
  const LocalInfoLoading();
}

class LocalInfoDone extends LocalInfoState {
  const LocalInfoDone(List<InfoEntity> info) :super(info: info);
}

class LocalInfoError extends LocalInfoState {
  final String errorMessage;

  const LocalInfoError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
