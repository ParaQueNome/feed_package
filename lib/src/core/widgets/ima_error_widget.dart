import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InternalErrorWidget extends StatelessWidget {
  const InternalErrorWidget({super.key, this.error, this.stackTrace});

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/internal_error.svg',
            height: MediaQuery.sizeOf(context).height * .5,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
