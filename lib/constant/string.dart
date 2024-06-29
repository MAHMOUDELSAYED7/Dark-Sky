import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyApiUrl {
  // current !!! forecast
  static String baseUrl = dotenv.env['weatherBaseUrl']!;
  static String apikey = dotenv.env['weatherApiKey']!;
}
