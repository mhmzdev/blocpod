import 'dart:io';

import 'package:bloced_archi/configs/configs.dart';
import 'package:bloced_archi/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

part '_data.dart';
part '_model.dart';

part 'widgets/_bottom_bar_icon.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final currentRoute = NavigationHistoryObserver().top;
    final currentPath = currentRoute!.settings.name;

    return Container(
      padding: Space.a.t30 + (Platform.isIOS ? Space.b.t20 : Space.z),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(5.un()),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _items.asMap().entries.map((e) {
          final isSelected = currentPath == e.value.path;

          return Expanded(
            child: InkWell(
              onTap: () {
                if (!isSelected) {
                  final path = e.value.path;
                  path.pushReplace(context);
                }
              },
              child: _BottomBarIcon(
                item: e.value,
                isSelected: isSelected,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
