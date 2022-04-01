import 'package:flutter/material.dart';
import 'package:trading_wallet/utils/utils.dart';

import 'rate_profit_container.dart';

class SummaryHeader extends StatelessWidget {
  final double totalSpending;
  final double totalProfit;
  final double monthlyChangePercent;
  const SummaryHeader({
    Key? key,
    required this.totalSpending,
    required this.totalProfit,
    required this.monthlyChangePercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: Center(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Spending",
                              style: Theme.of(context).textTheme.bodyText2),
                          Text("\$" + doubleToMoneyString(totalSpending),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold)),
                        ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Profit",
                            style: Theme.of(context).textTheme.bodyText2),
                        Text("\$" + doubleToMoneyString(totalProfit),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                Flexible(child: Container()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(child: Container()),
                    Text("Profit Rate",
                        style: Theme.of(context).textTheme.bodyText2),
                    RateProfitContainer(
                        monthlyChangePercent: monthlyChangePercent),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
