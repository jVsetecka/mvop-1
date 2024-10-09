class BitcoinData {
  final String? timestamp;
  final List<Currency> currencies;

  BitcoinData({
    required this.currencies,
    this.timestamp = '2021-10-10',
  });

  static BitcoinData fromJson(Map<String, dynamic> json) {
    return BitcoinData(
      timestamp: json['time']['updated'],
      currencies: json['bpi']
          .entries
          .map((entry) => Currency(
                name: entry.value['code'],
                value: entry.value['rate_float'],
                rate: entry.value['rate'],
              ))
          .toList(),
    );
  }
}

class Currency {
  final String name;
  final double value;
  final String rate;

  Currency({
    required this.name,
    required this.value,
    required this.rate,
  });
}
