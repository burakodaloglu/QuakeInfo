import 'package:flutter/material.dart';

class LanguageThemeSelector extends StatefulWidget {
  const LanguageThemeSelector({super.key});

  @override
  State<LanguageThemeSelector> createState() => _LanguageThemeSelectorState();
}

class _LanguageThemeSelectorState extends State<LanguageThemeSelector> {
  final List<String> languages = ['Türkçe', 'English'];
  int currentLanguageIndex = 0;

  String currentTheme = 'Sistem'; // Başlangıçta sistem teması

  void _changeLanguage(int direction) {
    setState(() {
      currentLanguageIndex = (currentLanguageIndex + direction).clamp(0, languages.length - 1);
    });
  }

  void _changeTheme(String theme) {
    setState(() {
      currentTheme = theme;
    });
    // Tema değişikliği işlemleri burada yapılabilir
  }

  void _saveSettings() {
    // Burada ayarları kaydetme işlemi yapılabilir
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Ayarlar kaydedildi!")),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSelectorRow(
            title: 'Dil',
            currentValue: languages[currentLanguageIndex],
            onPrevious: () => _changeLanguage(-1),
            onNext: () => _changeLanguage(1),
            isFirst: currentLanguageIndex == 0,
            isLast: currentLanguageIndex == languages.length - 1,
          ),
          const SizedBox(height: 20),
          _buildSelectorRow(
            title: 'Tema',
            currentValue: currentTheme,
            onPrevious: () => _changeTheme('Sistem'),
            onNext: () {
              if (currentTheme == 'Sistem') {
                _changeTheme('Açık');
              } else if (currentTheme == 'Açık') {
                _changeTheme('Koyu');
              } else {
                _changeTheme('Sistem');
              }
            },
            isFirst: currentTheme == 'Sistem',
            isLast: currentTheme == 'Koyu',
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _saveSettings,
            style: ElevatedButton.styleFrom(
              foregroundColor: colorScheme.onPrimary,
              backgroundColor: colorScheme.primary,
              minimumSize: const Size(double.infinity, 50),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text("Kaydet"),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectorRow({
    required String title,
    required String currentValue,
    required VoidCallback onPrevious,
    required VoidCallback onNext,
    bool isFirst = false,
    bool isLast = false,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Expanded(
          child: Text(title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: colorScheme.onBackground,
              )),
        ),
        IconButton(
          icon: Icon(Icons.chevron_left,
              color: isFirst ? Colors.grey : colorScheme.primary),
          onPressed: isFirst ? null : onPrevious,
        ),
        Text(currentValue,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colorScheme.onBackground,
            )),
        IconButton(
          icon: Icon(Icons.chevron_right,
              color: isLast ? Colors.grey : colorScheme.primary),
          onPressed: isLast ? null : onNext,
        ),
      ],
    );
  }
}
