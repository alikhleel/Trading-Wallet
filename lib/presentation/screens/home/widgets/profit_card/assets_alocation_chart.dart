import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../data/models/trade.dart';

class AssetsAlocationChart extends StatefulWidget {
  final List<Trade> datasource;
  const AssetsAlocationChart({Key? key, required this.datasource})
      : super(key: key);

  @override
  State<AssetsAlocationChart> createState() => _AssetsAlocationChartState();
}

class _AssetsAlocationChartState extends State<AssetsAlocationChart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final datasource = widget.datasource;
    final summation =
        listSummation(datasource.map((e) => e.totalPrice).toList());
    return SfCircularChart(
        // Initialize category axis
        backgroundColor: Colors.white,
        legend: Legend(isVisible: true, position: LegendPosition.bottom),
        onDataLabelRender: (DataLabelRenderArgs args) {
          double a = (args.dataPoints as List<ChartPoint>)
              .map((e) => (e.text == "Others") ? e.y!.toDouble() : 0.toDouble())
              .reduce((value, element) => value + element);
          if (args.text == "Others") {
            args.text = a.toStringAsFixed(2) + "%";
          }
        },
        series: <CircularSeries>[
          DoughnutSeries<Trade, String>(
            // Bind data source
            dataSource: datasource,
            legendIconType: LegendIconType.circle,
            xValueMapper: (Trade trade, _) => trade.assetName,
            yValueMapper: (Trade trade, _) =>
                trade.totalPrice / summation * 100,
            dataLabelSettings: DataLabelSettings(
                isVisible: true,
                labelPosition: ChartDataLabelPosition.outside,
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.black)),
            dataLabelMapper: (Trade trade, i) =>
                (trade.totalPrice / summation * 100).toStringAsFixed(2) + "%",
            groupMode: CircularChartGroupMode.value,
            groupTo: 3.5,
            animationDuration: 0,
            innerRadius: '65%',
          )
        ]);
  }
}

double listSummation(List<double> data) {
  return data.reduce((value, element) => value + element);
}
