import 'package:dio/dio.dart';
import 'package:ifyk_landing/services/api_service.dart';

class Repository {
  static final _apiService = ApiService();

  static Future<Response> getFeedbacks() async {
    final response = await _apiService.getFeedbacks();
    return response;
  }

  static Future<Response> submitMessage(String name, String email, String message) async {
    final response = await _apiService.submitMessage(name, email, message);
    return response;
  }
}