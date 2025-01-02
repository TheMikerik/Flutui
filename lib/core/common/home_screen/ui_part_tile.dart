import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutui/core/common/theme_data_extension.dart';
import 'package:go_router/go_router.dart';

class UiPartTile extends ConsumerWidget {
  const UiPartTile({
    required this.title,
    required this.icon,
    required this.path,
    this.iconSize = 50,
    super.key,
  });

  final String title;
  final IconData icon;
  final String path;
  final double? iconSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: context.c.surface,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          context.pushNamed(path);
        },
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: iconSize,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, top: 4),
                    child: Text(
                      title,
                      style: context.t.titleMedium,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
