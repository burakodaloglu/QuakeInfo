import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_state.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/appbar_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/earthquake_card_widget.dart';

class EarthquakeListScreen extends StatelessWidget {
  const EarthquakeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: const AppbarWidget(title: "Liste"),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteEarthquakeBloc, RemoteEarthquakeState>(
      builder: (_, state) {
        if (state is RemoteEarthquakeLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteEarthquakeError) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteEarthquakeDone) {
          return ListView.builder(
            itemCount: state.earthquakes!.features.length,
            itemBuilder: (context, index) {
              return EarthquakeCardWidget(
                earthquake: state.earthquakes,
              );
            },
          );
        }
        return const SizedBox(); // or return any other default widget
      },
    );
  }
}
