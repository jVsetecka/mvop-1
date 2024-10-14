import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lekce5/bc_data.dart';

class BitcoinApi {
  static Future<BitcoinData?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'));

      Map<String, dynamic> json =
          jsonDecode(response.body) as Map<String, dynamic>;

      return BitcoinData.fromJson(json);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
