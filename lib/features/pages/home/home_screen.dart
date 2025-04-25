import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

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
      FlameAudio.bgm.play('whistle.mp3', volume: 100.0,);
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
    return Scaffold(
      backgroundColor:Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('QuakeInfo'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
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
                icon: Icons.public,
                label: 'Dünya Depremleri',
                onTap: () {},
              ),
              _buildButton(
                icon: Icons.notifications_active,
                label: 'Düdük',
                onTap: _toggleWhistleSound,
              ),
              _buildButton(
                icon: Icons.info,
                label: 'Neler Yapmalıyım',
                onTap: () {},
              ),
              _buildButton(
                icon: Icons.backpack,
                label: 'Çanta',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
      ),
      onPressed: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.blue),
          const SizedBox(height: 12),
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
