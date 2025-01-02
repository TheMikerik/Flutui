import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutui/core/common/home_screen/ui_part_tile.dart';
import 'package:flutui/core/common/home_screen/ui_part.dart';
import 'package:flutui/core/common/theme_data_extension.dart';

class UiPartsList extends ConsumerWidget {
  const UiPartsList({
    super.key,
    required this.parts,
    required this.title,
  });

  final List<UiPart> parts;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemCount = parts.isEmpty ? 1 : parts.length;
    const itemAspectRatio = 1.6;

    final rows = (itemCount / 2).ceil();
    final itemHeight =
        (MediaQuery.of(context).size.width / 2) / itemAspectRatio;
    final gridHeight = rows * itemHeight + (rows - 1) * 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.t.headlineMedium,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: gridHeight,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: itemAspectRatio,
            ),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final ui = parts[index];
              return UiPartTile(
                title: ui.name,
                icon: ui.icon,
                path: ui.path,
              );
            },
          ),
        ),
      ],
    );
  }
}
