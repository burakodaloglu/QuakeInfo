import 'package:QuakeInfo/config/theme/theme.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/bag/local/local_bag_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/info/local/local_info_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/di/di.dart';
import 'config/routes/router.dart';
import 'features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_event.dart';
import 'features/quakeinfo/presentation/bloc/info/local/local_info_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LocalBagBloc(sl())),
        BlocProvider(create: (_) => sl<LocalInfoBloc>()..add(const LocalInfoLoad())),
        BlocProvider(create: (_) => sl<RemoteEarthquakeBloc>()..add(const GetEarthquake()))
      ],
      child: MaterialApp.router(
        theme: AppThemes.lightTheme(),
        darkTheme: AppThemes.darkTheme(),
        themeMode: ThemeMode.system,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
