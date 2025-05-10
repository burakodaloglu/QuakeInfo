import 'package:flutter/material.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/language_theme_selector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsDialogWidget extends StatelessWidget {
  const SettingsDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
            AppLocalizations.of(context)!.settings,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: colorScheme.onBackground,
              ),
            ),
            const SizedBox(height: 16),
            LanguageThemeSelector(),
          ],
        ),
      ),
    );
  }
}
