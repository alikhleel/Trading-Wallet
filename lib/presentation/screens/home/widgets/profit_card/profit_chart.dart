import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../data/models/profit_data.dart';
import '../../../../../fixtures/fake_data.dart';

class ProfitChart extends StatefulWidget {
  const ProfitChart({Key? key}) : super(key: key);

  @override
  State<ProfitChart> createState() => _ProfitChartState();
}

class _ProfitChartState extends State<ProfitChart> {
  late ZoomPanBehavior _zoomPanBehavior;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
      enable: true,
    );

    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
      maximumZoomLevel: 0.8,
      enableMouseWheelZooming: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final datasource = fake_profits;
    final List<Color> color = <Color>[];
    color.add(const Color(0xFF4464F7).withOpacity(0.5));
    color.add(const Color(0xFF4464F7).withOpacity(0.8));
    color.add(const Color(0xFF4464F7));

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors = LinearGradient(
      colors: color,
      stops: stops,
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
    return SfCartesianChart(
        // Initialize category axis
        zoomPanBehavior: _zoomPanBehavior,
        backgroundColor: Colors.white,
        primaryXAxis: DateTimeAxis(
            visibleMinimum: datasource[5].date,
            visibleMaximum: datasource.last.date,
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            intervalType: DateTimeIntervalType.days,
            majorGridLines: const MajorGridLines(width: 0)),
        primaryYAxis: NumericAxis(interval: 4),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries<Profit, DateTime>>[
          SplineAreaSeries<Profit, DateTime>(
              // Bind data source
              dataSource: datasource,
              gradient: gradientColors,
              xValueMapper: (Profit profit, _) => profit.date,
              yValueMapper: (Profit profit, _) => profit.profit)
        ]);
  }
}
