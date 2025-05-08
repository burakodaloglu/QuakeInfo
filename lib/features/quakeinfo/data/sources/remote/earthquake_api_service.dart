import 'package:QuakeInfo/features/quakeinfo/data/model/earthquake.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/constants.dart';
part 'earthquake_api_service.g.dart';

@RestApi(baseUrl: earthquakeApi)
abstract class EarthquakeService {
  factory EarthquakeService(Dio dio) = _EarthquakeService;

  @GET("query")
  Future<HttpResponse<EarthquakeResponse>> getEarthquakes({
    @Query("format") String format = "geojson",
    @Query("orderby") String orderBy = "time",
    @Query("starttime") required String ? startTime,
  });
}