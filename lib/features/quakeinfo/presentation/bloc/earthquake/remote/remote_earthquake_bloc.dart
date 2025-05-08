import 'package:QuakeInfo/core/resources/data_state.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/usecase/get_earthquake_use_case.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_event.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteEarthquakeBloc
    extends Bloc<RemoteEarthquakeEvent, RemoteEarthquakeState> {
  final GetEarthquakeUseCase _getEarthquakeUseCase;

  RemoteEarthquakeBloc(this._getEarthquakeUseCase)
    : super(RemoteEarthquakeLoading()) {
    on<GetEarthquake>(onGetEarthquake);
  }

  void onGetEarthquake(
    GetEarthquake event,
    Emitter<RemoteEarthquakeState> emit,
  ) async {
    final dataState = await _getEarthquakeUseCase();

    if (dataState is Success && dataState.data!.features!.isNotEmpty) {
      emit(RemoteEarthquakeDone(dataState.data!));
    }
    if (dataState is Error) {
      debugPrint('DataState Error: ${dataState.error!.message}');
      emit(RemoteEarthquakeError(dataState.error!));
    }
  }
}
