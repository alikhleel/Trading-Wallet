import 'package:flutter/material.dart';

class CircularBorderCard extends StatelessWidget {
  final String cardTitle;
  final Widget child;
  const CircularBorderCard({
    Key? key,
    required this.child,
    required this.cardTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(cardTitle,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black)),
        Container(
            padding: const EdgeInsets.only(top: 20, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: child),
      ],
    );
  }
}
