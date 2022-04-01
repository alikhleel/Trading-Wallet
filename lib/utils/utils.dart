/// convert double to string with digit group separator
String doubleToMoneyString(double money) {
  return money.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}
