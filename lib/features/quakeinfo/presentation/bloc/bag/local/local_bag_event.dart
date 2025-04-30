import 'package:QuakeInfo/features/quakeinfo/domain/entities/bag_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LocalBagEvent extends Equatable {
  final BagEntity? bag;

  const LocalBagEvent({this.bag});

  @override
  List<Object?> get props => [bag];
}

class DeleteBag extends LocalBagEvent {
  const DeleteBag(BagEntity bag) : super(bag: bag);
}

class AddBag extends LocalBagEvent {
  const AddBag(BagEntity bag) : super(bag: bag);
}
class LoadBagList extends LocalBagEvent {
  const LoadBagList();
}
class ToggleBagCompletion extends LocalBagEvent {
  final BagEntity bag;

  const ToggleBagCompletion(this.bag);
}