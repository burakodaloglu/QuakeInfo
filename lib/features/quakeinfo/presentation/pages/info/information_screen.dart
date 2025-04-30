import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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

  final List<Map<String, dynamic>> actionSteps = [
    {
      'title': 'Sakin Kal',
      'description': 'Panik yapma. Derin nefes alarak durumunu değerlendir.',
      'icon': Icons.self_improvement,
    },
    {
      'title': 'Çök - Kapan - Tutun',
      'description': 'Sağlam bir eşyanın altına gir, başını ve enseni koru.',
      'icon': Icons.security,
    },
    {
      'title': 'Pencerelerden Uzak Dur',
      'description': 'Camlar kırılabilir, yaralanmaları önlemek için uzak dur.',
      'icon': Icons.window,
    },
    {
      'title': 'Asansör Kullanma',
      'description': 'Asansörler deprem anında risklidir, kullanma.',
      'icon': Icons.elevator,
    },
    {
      'title': 'Açık Alanda Kal',
      'description': 'Bina dışındaysan; bina, direk ve ağaçlardan uzak dur.',
      'icon': Icons.nature_people,
    },
    {
      'title': 'Deprem Bitince Kontrollü Çık',
      'description': 'Sarsıntı geçince hızlı değil, dikkatli şekilde çıkış yap.',
      'icon': Icons.exit_to_app,
    },
    {
      'title': 'Yaralılara Yardım Et',
      'description': 'Mümkünse ilk yardım uygulayarak destek ol. Yetkililere haber ver.',
      'icon': Icons.medical_services,
    },
    {
      'title': 'Doğru Bilgi Kaynağı Kullan',
      'description': 'AFAD, radyo ve resmi açıklamaları takip et.',
      'icon': Icons.info,
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppbarWidget(
        title: 'Neler Yapmalıyım',
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.redAccent,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: actionSteps.length,
              itemBuilder: (context, index) {
                final step = actionSteps[index];
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Icon(step['icon'], color: Colors.grey[700], size: 30),
                    title: Text(
                      step['title'],
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      step['description'],
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
