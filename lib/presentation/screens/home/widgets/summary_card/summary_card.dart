import 'package:flutter/material.dart';

import 'summary_header.dart';

class SammaryCard extends StatelessWidget {
  final double ringSize = 250;

  const SammaryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF4464F7),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              top: -ringSize / 2,
              right: -ringSize / 2,
              child: ShadowRing(
                size: ringSize,
              ),
            ),
            Positioned(
              bottom: -ringSize / 2,
              left: -ringSize / 2,
              child: ShadowRing(
                size: ringSize,
              ),
            ),
            const SummaryHeader(
              totalSpending: 20684.89,
              totalProfit: 6568,
              monthlyChangePercent: 31.7,
            ),
          ],
        ),
      ),
    );
  }
}

class ShadowRing extends StatelessWidget {
  final double size;
  const ShadowRing({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            stops: const [0.2, 0.4, 0.6, 0.8, 1],
            colors: [
              const Color(0xFFCCD1EA).withOpacity(0),
              const Color(0xFFCCD1EA).withOpacity(0.2),
              const Color(0xFFCCD1EA).withOpacity(0.3),
              const Color(0xFFCCD1EA).withOpacity(0.2),
              const Color(0xFFCCD1EA).withOpacity(0)
            ],
          )),
    );
  }
}
