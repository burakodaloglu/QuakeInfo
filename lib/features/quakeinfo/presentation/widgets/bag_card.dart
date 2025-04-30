import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/bag/local/local_bag_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/bag_entity.dart';
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
    return InkWell(
      onTap: () => setState(() => _isExpanded = !_isExpanded),
      child: Card(
        color: widget.bag.isCompleted ? Colors.green[50] : Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Checkbox
              InkWell(
                onTap:
                    () => context.read<LocalBagBloc>().add(
                      ToggleBagCompletion(widget.bag),
                    ),
                child: Icon(
                  widget.bag.isCompleted
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: widget.bag.isCompleted ? Colors.green : Colors.grey,
                  size: 32,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.bag.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration:
                            widget.bag.isCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                      ),
                    ),

                    // Açılır description
                    if (_isExpanded) ...[
                      const SizedBox(height: 8),
                      Text(
                        widget.bag.description,
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
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
