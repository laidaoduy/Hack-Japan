import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hack_japan/uis/home/HomeScreen.dart';
import 'package:hack_japan/uis/setting/SettingScreen.dart';
import 'package:hack_japan/uis/unit/UnitScreen.dart';

enum BottomBarEnum { home, unit, setting }

extension BottomBarEnumX on BottomBarEnum {
  Widget getScreen() {
    return switch (this) {
      BottomBarEnum.home => const HomeScreen(),
      BottomBarEnum.unit => const UnitScreen(),
      BottomBarEnum.setting => const SettingScreen(),
    };
  }

  String getName() {
    return switch (this) {
      BottomBarEnum.home => "Home",
      BottomBarEnum.unit => "Unit",
      BottomBarEnum.setting => "Setting",
    };
  }

  Widget getIcon() {
    return switch (this) {
      BottomBarEnum.home => const Icon(Icons.home),
      BottomBarEnum.unit => const Icon(Icons.bookmark_added),
      BottomBarEnum.setting => const Icon(Icons.settings),
    };
  }

  static BottomBarEnum fromIndex(int index) {
    switch (index) {
      case 1:
        return BottomBarEnum.unit;
      case 2:
        return BottomBarEnum.setting;
      default:
        return BottomBarEnum.home;
    }
  }
}
