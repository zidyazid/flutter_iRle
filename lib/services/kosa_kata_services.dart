part of 'services.dart';

class KosaKataServices {
  static Future<ApiReturnValue<List<KosaKata>>> getKosaKata() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockKosaKata);
  }

  static Future<ApiReturnValue<KosaKata>> updateStatusKosaKata(
      KosaKata kosakata) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(value: kosakata.copyWith(id: 1, status: 1));
    // return ApiReturnValue(value: kosakata.copyWith());
  }
}
