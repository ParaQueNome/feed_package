import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.size = 100, this.color});
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Color defaultColor = Theme.of(context).colorScheme.primary;
    if (color != null) {
      defaultColor = color!;
    }
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          colors: [
            defaultColor,
            defaultColor.withAlpha(150),
            defaultColor.withAlpha(125),
            defaultColor.withAlpha(100),
            defaultColor.withAlpha(75),
            defaultColor.withAlpha(50),
            defaultColor.withAlpha(25),
          ],
        ),
      ),
    );
  }
}
