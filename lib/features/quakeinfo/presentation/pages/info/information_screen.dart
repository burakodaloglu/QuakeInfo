import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/info/local/local_info_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/info/local/local_info_event.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/info/local/local_info_state.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/info_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../config/di/di.dart';
import '../../widgets/appbar_widgets.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    const videoUrl = 'https://www.youtube.com/watch?v=oZeI0X40EEY';
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LocalInfoBloc>()..add(const LocalInfoLoad()),
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppbarWidget(title: 'Neler Yapmalıyım'),
        body: Column(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.redAccent,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<LocalInfoBloc, LocalInfoState>(
                builder: (context, state) {
                  if (state is LocalInfoLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is LocalInfoDone) {
                    final infoItems = state.info!;
                    if (infoItems.isEmpty) {
                      return Column(
                        children: const [
                          SizedBox(height: 32),
                          Icon(Icons.backpack, size: 64, color: Colors.grey),
                          SizedBox(height: 8),
                          Text("Çantan boş", style: TextStyle(fontSize: 18, color: Colors.grey)),
                        ],
                      );
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: infoItems.length,
                      itemBuilder: (context, index) {
                        return InfoCard(info: infoItems[index]);
                      },
                    );
                  } else {
                    return const Center(child: Text('Bir hata oluştu.'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
