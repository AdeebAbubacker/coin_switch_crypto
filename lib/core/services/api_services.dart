import 'dart:convert';

import 'package:coinswitch_crypto/core/models/cryptomodel/cryptomodel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Cryptomodel> getCrypto() async {
    try {
      final response = await http.get(Uri.parse(
          'http://192.168.1.2:3000/api/v1/crypto')); // Replace with your API endpoint
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body); // Decode the JSON response
        final crypto = Cryptomodel.fromJson(
            jsonData); // Parse the JSON into a Cryptomodel object
        return crypto;
      } else {
        throw Exception('Failed to load crypto');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
