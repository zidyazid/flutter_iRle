part of 'services.dart';

class KuisServices {
  static Future<ApiReturnValue<List<Kuis>>> getKuises() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockKuis);
  }
}
