import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../bloc/earthquake/remote/remote_earthquake_bloc.dart';
import '../../../bloc/earthquake/remote/remote_earthquake_state.dart';
import '../../../widgets/appbar_widgets.dart';

class EarthquakeMapScreen extends StatelessWidget {
  const EarthquakeMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppbarWidget(title:Text(AppLocalizations.of(context)!.navMap)),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteEarthquakeBloc, RemoteEarthquakeState>(
      builder: (context, state) {
        if (state is RemoteEarthquakeLoading) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
          );

        }
        if (state is RemoteEarthquakeError) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteEarthquakeDone) {
          // Deprem verilerini markers'a dönüştürmek
          List<Marker> markers =
              state.earthquakes!.features.map((feature) {
                return Marker(
                  markerId: MarkerId(feature.id),
                  position: LatLng(
                    feature.geometry.coordinates[1],
                    feature.geometry.coordinates[0],
                  ),
                  infoWindow: InfoWindow(
                    title: feature.properties.place,
                    snippet: 'Magnitude: ${feature.properties.mag}',
                  ),
                );
              }).toList();

          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(39.0, 35.0), // Türkiye merkezli bir konum
              zoom: 5,
            ),
            markers: Set<Marker>.of(
              state.earthquakes!.features.map((feature) {
                final coords = feature.geometry.coordinates;
                return Marker(
                  markerId: MarkerId(feature.id),
                  position: LatLng(coords[1], coords[0]),
                  infoWindow: InfoWindow(
                    title: feature.properties.place,
                    snippet: 'Mag: ${feature.properties.mag}',
                  ),
                );
              }),
            ),
          );
        }
        return const SizedBox(); // Eğer durum sağlanmazsa boş widget
      },
    );
  }
}
