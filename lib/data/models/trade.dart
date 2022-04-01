/// Trade is a representation for buy or sell action.
class Trade {
  final String _assetName;
  final double _amount, _price;
  final DateTime _tradeDate;
  final bool _isSell;

  /// [isSell] is a flag to represent the trade action the default is buy action.
  Trade(
      {required String assetName,
      required double amount,
      required double price,
      required DateTime tradeDate,
      bool isSell = false})
      : _assetName = assetName,
        _amount = amount,
        _price = price,
        _tradeDate = tradeDate,
        _isSell = isSell;

  String get assetName => _assetName;
  double get amount => _amount;
  double get price => _price;
  DateTime get tradeDate => _tradeDate;
  bool get isSell => _isSell;
  double get totalPrice => _amount * _price;
}
