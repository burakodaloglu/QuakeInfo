import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/bag_entity.dart';
import '../bloc/bag/local/local_bag_bloc.dart';
import '../bloc/bag/local/local_bag_event.dart';

class BagCard extends StatefulWidget {
  final BagEntity bag;
  final VoidCallback onToggleCompleted;

  const BagCard({
    super.key,
    required this.bag,
    required this.onToggleCompleted,
  });

  @override
  State<BagCard> createState() => _BagCardState();
}

class _BagCardState extends State<BagCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bag = widget.bag;

    return InkWell(
      onTap: () => setState(() => _isExpanded = !_isExpanded),
      child: Card(
        color: bag.isCompleted
            ? colorScheme.primaryContainer.withOpacity(0.1)
            : colorScheme.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.read<LocalBagBloc>().add(
                  ToggleBagCompletion(bag),
                ),
                child: Icon(
                  bag.isCompleted
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: bag.isCompleted
                      ? colorScheme.primary
                      : colorScheme.onSurface.withOpacity(0.6),
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bag.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                        decoration: bag.isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    if (_isExpanded) ...[
                      const SizedBox(height: 8),
                      Text(
                        bag.description,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurface.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
