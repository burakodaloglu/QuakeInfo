import 'package:QuakeInfo/features/quakeinfo/domain/entities/bag_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LocalBagState extends Equatable {
  final List<BagEntity>? bag;

  const LocalBagState({this.bag});

  @override
  List<Object> get props => [bag!];
}

class LocalBagLoading extends LocalBagState {
  const LocalBagLoading();
}

class LocalBagDone extends LocalBagState {
  const LocalBagDone(List<BagEntity> bag) :super(bag: bag);
}

class LocalBagError extends LocalBagState {
  final String errorMessage;

  const LocalBagError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

