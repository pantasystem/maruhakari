import 'dart:developer';

import 'package:dio/dio.dart';

typedef Execute<T> = Future<T> Function();

class UnauthorizedException implements Exception {
  UnauthorizedException([this.message]);
  final dynamic message;
}

class NotFoundException implements Exception {
  NotFoundException([this.message]);
  final dynamic message;
}

class ClientException implements Exception {
  ClientException([this.message]);
  final dynamic message;
}

class ServerException implements Exception {
  ServerException([this.message]);
  final dynamic message;
}

Future<T> handleError<T>(Execute<T> executor) async {
  try {
    return await executor.call();
  } on DioError catch (e) {
    log('通史エラー', error: e);
    final statusCode = e.response?.statusCode;
    if (statusCode == 401) {
      throw UnauthorizedException('認証エラー:${e.stackTrace}');
    } else if (statusCode == 404) {
      throw NotFoundException('このリソースは存在しません。${e.stackTrace}');
    } else if (statusCode != null && statusCode >= 500 && statusCode < 600) {
      throw ServerException('サーバーエラー statusCode:$statusCode');
    } else if (statusCode == 400) {
      throw ClientException('クライアントエラー:${e.response?.data}');
    }
    rethrow;
  } on Error catch (e, st) {
    log("通信エラー", error: e, stackTrace: st);
    rethrow;
  }
}