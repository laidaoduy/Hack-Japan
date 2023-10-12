import 'package:flutter/material.dart';
import 'package:hack_japan/cores/enums/BottomBarEnum.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final ValueNotifier<BottomBarEnum> _bottomBarEnum = ValueNotifier(BottomBarEnum.home);

  @override
  void dispose() {
    _bottomBarEnum.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<BottomBarEnum>(
        valueListenable: _bottomBarEnum,
        builder: (_, value, __) {
          return Scaffold(
            body: value.getScreen(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _bottomBarEnum.value.index,
              items: BottomBarEnum.values.map((e) {
                return BottomNavigationBarItem(icon: e.getIcon(), label: e.getName());
              }).toList(),
              onTap: (index) => _bottomBarEnum.value = BottomBarEnumX.fromIndex(index),
            ),
          );
        });
  }
}
