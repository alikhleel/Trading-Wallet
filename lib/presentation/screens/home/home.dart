import 'package:flutter/material.dart';
import 'package:trading_wallet/fixtures/fake_data.dart';
import '../../widgets/card.dart';
import 'widgets/profit_card/assets_alocation_chart.dart';
import 'widgets/profit_card/profit_chart.dart';
import 'widgets/summary_card/summary_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Wallet",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SammaryCard(),
                const SizedBox(height: 25),
                const CircularBorderCard(
                  cardTitle: 'Your profit',
                  child: ProfitChart(),
                ),
                const SizedBox(height: 25),
                CircularBorderCard(
                  cardTitle: 'Assets Alocation',
                  child: AssetsAlocationChart(datasource: fake_trades),
                )
              ],
            ),
          ),
        ));
  }
}
