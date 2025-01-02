import 'package:flutter/material.dart';
import 'package:flutui/core/common/home_screen/ui_part.dart';
import 'package:flutui/core/common/home_screen/ui_parts_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routePath = '/home';
  static const name = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UiPartsList(
                title: 'Screens',
                parts: screens,
              ),
              const SizedBox(height: 16),
              UiPartsList(
                title: 'Components',
                parts: components,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
