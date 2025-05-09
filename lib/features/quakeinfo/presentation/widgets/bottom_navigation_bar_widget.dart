import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigationBarWidget({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>((
            states,
          ) {
            if (states.contains(MaterialState.selected)) {
              // Seçili durumda label'ın rengi primary olacak
              return TextStyle(color: Theme.of(context).colorScheme.onError);
            } else {
              // Seçili değilse label'ın rengi tertiary olacak
              return TextStyle(color: Theme.of(context).colorScheme.tertiary);
            }
          }),
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>((states) {
            if (states.contains(MaterialState.selected)) {
              // Seçili durumda ikonun rengi primary olacak
              return IconThemeData(
                color: Theme.of(context).colorScheme.primary,
              );
            } else {
              // Seçili değilse ikonun rengi tertiary olacak
              return IconThemeData(
                color: Theme.of(context).colorScheme.tertiary,
              );
            }
          }),
        ),
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: navigationShell.goBranch,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.map), label: "Map"),
            NavigationDestination(icon: Icon(Icons.list), label: "List"),
          ],
        ),
      ),
    );
  }
}
