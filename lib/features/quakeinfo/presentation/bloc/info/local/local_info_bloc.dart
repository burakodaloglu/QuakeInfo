import 'package:QuakeInfo/features/quakeinfo/data/sources/local/info_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../config/di/di.dart';
import 'local_info_event.dart';
import 'local_info_state.dart';

class LocalInfoBloc extends Bloc<LocalInfoEvent, LocalInfoState> {
  LocalInfoBloc() : super(const LocalInfoLoading()) {
    on<LocalInfoLoad>(_onLoadInfo);
  }

  Future<void> _onLoadInfo(
    LocalInfoLoad event,
    Emitter<LocalInfoState> emit,
  ) async {
    emit(const LocalInfoLoading());
    try {
      // Veritabanından tüm info öğelerini çekiyoruz
      final infos = await sl<InfoDatabase>().infoDao.getAllInfos();
      // Veri geldiyse, LocalInfoDone state'ini gönderiyoruz
      emit(LocalInfoDone(infos));
    } catch (e) {
      // Hata durumunda işlem yapabilirsiniz
      emit(LocalInfoError('Failed to load infos: $e'));
    }
  }
}
