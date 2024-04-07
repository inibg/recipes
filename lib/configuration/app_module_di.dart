import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:recipes/configuration/app_constants.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

void registerAppModuleDependencies() {
  Get.lazyPut<Dio>(
    () {
      Dio dio = Dio();
      dio.options
        ..baseUrl = AppConstants.baseUrl
        ..connectTimeout =
            const Duration(milliseconds: AppConstants.connectTimeout);
      if (AppConstants.verboseNetwork) {
        dio.interceptors.add(
          TalkerDioLogger(
            settings: const TalkerDioLoggerSettings(),
          ),
        );
      }
      // dio.httpClientAdapter = IOHttpClientAdapter(
      //   createHttpClient: () {
      //     final HttpClient client = HttpClient();
      //     client.badCertificateCallback = (cert, host, port) => true;
      //     return client;
      //   },
      // );
      return dio;
    },
    fenix: true,
  );
}
