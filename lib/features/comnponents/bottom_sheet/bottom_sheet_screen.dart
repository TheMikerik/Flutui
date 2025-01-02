import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  static const routePath = '/bottom_sheet';
  static const name = 'bottom_sheet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheets'),
      ),
      body: Placeholder(),
    );
  }
}
