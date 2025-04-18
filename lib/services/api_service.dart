import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ifyk_landing/ui/ui.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const bool production = true;

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: production
          ? 'https://app.ifykevents.com/api'
          : 'https://staging-app.ifykevents.com/api',
      headers: {
        'authorization':
            '97e62c9fb62391d3be9e364706334babac03d334181730c5ac066c316b16db2da6b964e9b3d76cd0365b8caae8af00f400d9772457f30ce44ee583c1feb03e3afbe0c982875557c42c2688ed8ecaf6141f3ccb0adf00b717266e4bdc7965ef12ca77783419b89c837e8821a8de768ee3e3a019af6f6301c1234bfaaf1170f9a9'
      },
    ),
  );

  ApiService() {
    if (kDebugMode) {
      _dio.interceptors
          .add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }
  }

  Future<Response> getFeedbacks() {
    try {
      return _dio.get('/reviews');
    } on DioException {
      rethrow;
    }
  }

  Future<Response> submitMessage(String name, String email, String message) {
    try {
      print("Connect with US API hit");
      return _dio.post(
        '/contact-us',
        data: {'name': name, 'email': email, 'message': message},
      );
    } on DioException {
      rethrow;
    }
  }

  Future<Response?> subscribe(String email, BuildContext context) async {
    try {
      String url = '/addContact';

      var response = await _dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'email': email,
        },
      );

      print(email);
      print('Subscription Success: ${response.statusCode}');
      print('Subscription Success: ${response.data}');
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.data["message"])));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.data["message"])));
      }

      return response;
    } on DioException catch (e) {
      print('Subscription Error: ${e.message}');
      if (e.response != null) {
        print('Status Code: ${e.response?.statusCode}');
        print('Data: ${e.response?.data}');
      } else {
        print('Error sending request!');
      }
      return null;
    } catch (e) {
      print('Unexpected Error: $e');
      return null;
    }
  }

  Future<Response?> phoneNumber(String number, BuildContext context) async {
    try {
      String url = '/user/sendSMS';

      var response = await _dio.post(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'phoneNumber': number,
        },
      );

      print(number);
      print('Number  Success code: ${response.statusCode}');
      print('Number Success: ${response.data}');
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.data["message"])));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.data["message"])));
      }

      return response;
    } on DioException catch (e) {
      print('Send Link Error: ${e.message}');
      if (e.response != null) {
        print('Status Code: ${e.response?.statusCode}');
        print('Data: ${e.response?.data}');
      } else {
        print('Error sending request!');
      }
      return null;
    } catch (e) {
      print('Unexpected Error: $e');
      return null;
    }
  }

  Future<BlogsModel?> getAllBlogs() async {
    String url = '/blogs/getBlogs';

    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        return BlogsModel.fromJson(response.data);
      } else {
        print("Failed with status: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error in blogs ${e.toString()}");
      return null;
    }
  }

  Future<String> fetchHtmlData(String id) async {
    try {
      String url = '/blogs/getCampaignContent?campaignId=$id';
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        return response.data['data'];
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return "Error fetching data: $e";
    }
  }
}
