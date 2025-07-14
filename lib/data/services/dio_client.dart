
import 'package:dio/dio.dart';
import '../../config/constants/enviroment.dart';

class DioClient {
  final dio = Dio(
    BaseOptions(
      baseUrl: Enviroment.baseUrl,
    ),
  );
}