part of 'services.dart';

class MateriServices{
  static Future<ApiReturnValue<List<Materi>>> getMateries() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockMateries);
  }
}