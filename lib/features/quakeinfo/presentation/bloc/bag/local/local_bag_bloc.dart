import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../config/di/di.dart';
import '../../../../data/sources/local/bag_database.dart';
import '../../../../domain/entities/bag_entity.dart';
import '../../../../domain/usecase/update_bag_use_case.dart';
import 'local_bag_event.dart';
import 'local_bag_state.dart';

class LocalBagBloc extends Bloc<LocalBagEvent, LocalBagState> {
  final UpdateBagUseCase updateBagUseCase;

  LocalBagBloc(this.updateBagUseCase) : super(const LocalBagLoading()) {
    on<LoadBagList>(_onLoadBagList);
    on<ToggleBagCompletion>(_onToggleBagCompletion);
  }

  Future<void> _onLoadBagList(
    LoadBagList event,
    Emitter<LocalBagState> emit,
  ) async {
    emit(const LocalBagLoading());
    try {
      // Veritabanından tüm bag öğelerini çekiyoruz
      final bags = await sl<BagDatabase>().bagDao.getAllBags();
      // Veri geldiyse, LocalBagDone state'ini gönderiyoruz
      emit(LocalBagDone(bags));
    } catch (e) {
      // Hata durumunda işlem yapabilirsiniz
      emit(LocalBagError('Failed to load bags: $e'));
    }
  }

  Future<void> _onToggleBagCompletion(
    ToggleBagCompletion event,
    Emitter<LocalBagState> emit,
  ) async {
    final updatedBag = BagEntity(
      id: event.bag.id,
      title: event.bag.title,
      description: event.bag.description,
      isCompleted: !event.bag.isCompleted,
    );

    await updateBagUseCase.call(params: updatedBag);
    final updatedList = await sl<BagDatabase>().bagDao.getAllBags();
    emit(LocalBagDone(updatedList));
  }
}
