import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/di/di.dart';
import '../../bloc/bag/local/local_bag_bloc.dart';
import '../../bloc/bag/local/local_bag_event.dart';
import '../../bloc/bag/local/local_bag_state.dart';
import '../../widgets/bag_card.dart';
import '../../widgets/info_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocProvider(
      create: (_) => sl<LocalBagBloc>()..add(const LoadBagList()),
      child: Scaffold(
        backgroundColor: colorScheme.background,
        appBar: AppbarWidget(title:Text(AppLocalizations.of(context)!.buttonBag)),
        body: const BagContent(),
      ),
    );
  }
}

class BagContent extends StatelessWidget {
  const BagContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/earthquake_bag.png', height: 200),
          ),
          const InfoCard(), // Yeni bilgi kartı bileşeni
          const BagListView(),
        ],
      ),
    );
  }
}

class BagListView extends StatelessWidget {
  const BagListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalBagBloc, LocalBagState>(
      builder: (context, state) {
        if (state is LocalBagLoading) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
          );
        } else if (state is LocalBagDone) {
          final bagItems = state.bag!;
          if (bagItems.isEmpty) {
            return Column(
              children: const [
                SizedBox(height: 32),
                Icon(Icons.backpack, size: 64, color: Colors.grey),
                SizedBox(height: 8),
                Text(
                  "Çantan boş",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            );
          }
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: bagItems.length,
            itemBuilder: (context, index) {
              return BagCard(
                bag: bagItems[index],
                onToggleCompleted: () {}, // Gelecekte doldurulabilir
              );
            },
          );
        } else {
          return const Center(child: Text('Bir hata oluştu.'));
        }
      },
    );
  }
}
