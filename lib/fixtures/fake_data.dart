import 'package:flutter/material.dart';

import '../data/models/profit_data.dart';
import '../data/models/trade.dart';

final List<Profit> fake_profits = [
  Profit(DateTime(2021, 1, 20), 35),
  Profit(DateTime(2021, 2, 20), 28),
  Profit(DateTime(2021, 3, 20), 34),
  Profit(DateTime(2021, 4, 20), 32),
  Profit(DateTime(2021, 5, 20), 35),
  Profit(DateTime(2021, 6, 20), 28),
  Profit(DateTime(2021, 7, 20), 34),
  Profit(DateTime(2021, 8, 20), 32),
  Profit(DateTime(2021, 9, 20), 35),
  Profit(DateTime(2021, 10, 20), 28),
  Profit(DateTime(2021, 11, 20), 34),
  Profit(DateTime(2021, 12, 20), 32),
  Profit(DateTime(2022, 1, 20), 35),
  Profit(DateTime(2022, 2, 20), 50),
  Profit(DateTime(2022, 3, 20), 130),
  Profit(DateTime(2022, 4, 20), 120),
];

final List<Trade> fake_trades = [
  Trade(
      assetName: 'ICP',
      amount: 55,
      price: 67,
      tradeDate: DateTime.utc(2021, 8, 5)),
  Trade(
      assetName: 'Eth',
      amount: 22,
      price: 800,
      tradeDate: DateTime.utc(2021, 9, 5),
      isSell: true),
  Trade(
      assetName: 'Dot',
      amount: 100,
      price: 90,
      tradeDate: DateTime.utc(2021, 8, 10)),
  Trade(
      assetName: 'BTC',
      amount: 0.158,
      price: 34897,
      tradeDate: DateTime.utc(2021, 12, 10)),
  Trade(
      assetName: 'IOTA',
      amount: 100,
      price: 856,
      tradeDate: DateTime.utc(2021, 10, 28)),
  Trade(
      assetName: 'Cro',
      amount: 60,
      price: 90,
      tradeDate: DateTime.utc(2022, 1, 10)),
  // Trade(
  //
  //     assetName: 'Sand',
  //     amount: 30,
  //     price: 90,
  //     tradeDate: DateTime.utc(2022, 1, 10)),
];
