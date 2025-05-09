import 'package:QuakeInfo/config/routes/router.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/appbar_widgets.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isWhistlePlaying = false;

  void _toggleWhistleSound() async {
    if (isWhistlePlaying) {
      FlameAudio.bgm.stop();
    } else {
      FlameAudio.bgm.play('whistle.mp3', volume: 100.0);
    }
    setState(() {
      isWhistlePlaying = !isWhistlePlaying;
    });
  }

  @override
  void initState() {
    super.initState();
    FlameAudio.bgm.initialize();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppbarWidget(title: "QuakeInfo"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            shrinkWrap: true,
            children: [
              _buildButton(
                icon: Image.asset("assets/images/earthquake.png"),
                label: 'Dünya Depremleri',
                onTap: () => context.push(AppRoutes.earthquake),
                colorScheme: colorScheme,
              ),
              _buildButton(
                icon: Image.asset("assets/images/whistle.png"),
                label: 'Düdük',
                onTap: _toggleWhistleSound,
                colorScheme: colorScheme,
              ),
              _buildButton(
                icon:  Image.asset("assets/images/information.png"),
                label: 'Neler Yapmalıyım',
                onTap: () => context.push(AppRoutes.information),
                colorScheme: colorScheme,
              ),
              _buildButton(
                icon: Image.asset("assets/images/bag.png"),
                label: 'Çanta',
                onTap: () => context.push(AppRoutes.bag),
                colorScheme: colorScheme,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required Image icon,
    required String label,
    required VoidCallback onTap,
    required ColorScheme colorScheme,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        elevation: 3,
      ),
      onPressed: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: icon.image, width: 75, height: 75),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimaryContainer,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
