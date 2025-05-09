import 'package:flutter/material.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/settings_dialog_widget.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onInfoTap;

  const AppbarWidget({
    super.key,
    required this.title,
    this.onInfoTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppBar(
      backgroundColor: colorScheme.background,
      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
          color: colorScheme.onBackground,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const SettingsDialogWidget();
              },
            );
          },
          icon: Icon(Icons.settings, color: colorScheme.onBackground),
        ),
      ],
      iconTheme: IconThemeData(color: colorScheme.onBackground),
      elevation: 2,
      shadowColor: colorScheme.shadow.withOpacity(0.1),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
