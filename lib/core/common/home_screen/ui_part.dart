import 'package:flutter/material.dart';
import 'package:flutui/features/comnponents/bottom_sheet/bottom_sheet_screen.dart';
import 'package:flutui/features/pages/settings/settings_screen.dart';
import 'package:hugeicons/hugeicons.dart';

class UiPart {
  final String name;
  final IconData icon;
  final String path;

  UiPart({
    required this.name,
    required this.icon,
    required this.path,
  });
}

List<UiPart> screens = [
  UiPart(
    name: 'Settings',
    icon: HugeIcons.strokeRoundedSettings01,
    path: SettingsScreen.name,
  ),
];

List<UiPart> components = [
  UiPart(
    name: 'Bottom Sheet',
    icon: HugeIcons.strokeRoundedTransitionTop,
    path: BottomSheetScreen.name,
  ),
];
