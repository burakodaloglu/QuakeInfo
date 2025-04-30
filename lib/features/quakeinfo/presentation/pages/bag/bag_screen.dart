import 'package:QuakeInfo/features/quakeinfo/presentation/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/di/di.dart';
import '../../bloc/bag/local/local_bag_bloc.dart';
import '../../bloc/bag/local/local_bag_event.dart';
import '../../bloc/bag/local/local_bag_state.dart';
import '../../widgets/bag_card.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LocalBagBloc>()..add(const LoadBagList()),
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppbarWidget(title: "Çantam"),
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
            child: Image.asset(
              'assets/images/earthquake_bag.png',
              height: 200,
            ),
          ),
          const InfoCard(), // Yeni bilgi kartı bileşeni
          const BagListView(),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sol tarafta ikon

          const SizedBox(width: 16),

          // Sağ tarafta metin
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Neden Deprem Çantası Hazırlamalıyız?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Deprem sonrası ilk 72 saat çok kritiktir. Yardım gecikebilir ve temel ihtiyaçlara erişim zorlaşabilir. "
                      "Hazırlıklı olmak, hayati riskleri azaltır. Deprem çantanızı buradan kontrol edebilirsiniz.",
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
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
          return const Center(child: CircularProgressIndicator());
        } else if (state is LocalBagDone) {
          final bagItems = state.bag!;
          if (bagItems.isEmpty) {
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
