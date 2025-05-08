import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/model/earthquake.dart';

abstract class RemoteEarthquakeState extends Equatable {

  final EarthquakeResponse ? earthquakes;
  final DioError ? error;
  const RemoteEarthquakeState({this.earthquakes, this.error});

  @override
  List<Object?> get props => [earthquakes, error];
}

class RemoteEarthquakeLoading extends RemoteEarthquakeState {
  const RemoteEarthquakeLoading();
}

class RemoteEarthquakeDone extends RemoteEarthquakeState {
  const RemoteEarthquakeDone(EarthquakeResponse earthquakes) : super(earthquakes: earthquakes);
}

class RemoteEarthquakeError extends RemoteEarthquakeState {
  const RemoteEarthquakeError(DioError error) : super(error: error);
}