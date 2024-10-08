import 'package:flutter/material.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/core/constant/icons.dart';
import 'package:scalers_test/core/widgets/custom_icon.dart';

/// Custom App bar for Jobs screen.
class JobsAppBar extends StatelessWidget {
   JobsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: _padding,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        boxShadow: [_boxShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Jobs', style: textTheme.headlineLarge?.copyWith(fontSize: 22)),
          CustomIcon(
            AppIcons.NOTIFICATION,
            size: 45,
          ),
        ],
      ),
    );
  }

  /// The box shadow for the app bar.
  final BoxShadow _boxShadow = BoxShadow(
    blurRadius: 10,
    offset: const Offset(0, 2),
    color: Colors.grey.withOpacity(0.1),
  );

  final EdgeInsets _padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 24);
}