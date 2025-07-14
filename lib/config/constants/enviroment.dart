
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String baseUrl = dotenv.env['BASE_URL'] ?? '';
  static String apiKey = dotenv.env['API_KEY'] ?? '';
}