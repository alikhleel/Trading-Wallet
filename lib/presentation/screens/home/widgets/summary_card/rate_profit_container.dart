import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/svg.dart';

class RateProfitContainer extends StatelessWidget {
  const RateProfitContainer({
    Key? key,
    required this.monthlyChangePercent,
  }) : super(key: key);

  final double monthlyChangePercent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          SvgPicture.asset(
            monthlyChangePercent >= 0
                ? 'assets/svg/green_up.svg'
                : 'assets/svg/red_down.svg',
            width: 15,
            height: 15,
          ),
          const SizedBox(width: 5),
          Text(
              (monthlyChangePercent >= 0 ? "+ " : "- ") +
                  monthlyChangePercent.abs().toString() +
                  "%",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontFamily: "Roboto", fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}
