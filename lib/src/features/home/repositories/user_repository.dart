import 'package:dio/dio.dart';
import 'package:feature_first_with_getx/src/features/home/domains/user_pagination.dart';
import 'package:feature_first_with_getx/src/providers/network/base_api_provider.dart';
import 'package:logger/logger.dart';

import '../domains/User.dart';

var logger = Logger();

abstract class IUserRepository {
  Future<UserPagination> getUsers([int page = 1]);

  Future<User> getUser(int id);

  Future<void> likeUser(int id);

  Future<void> recordView(int id);
}

class UserRepository implements IUserRepository {
  final BaseApiProvider provider;
  final limit = 20;

  UserRepository(this.provider);

  @override
  Future<UserPagination> getUsers([int page = 1]) async {
    try {
      final url = 'users?page=${page}';
      print("ggggggggggggggggggggggggggggggggggggggggg");
      final response = await provider.get(url);
      return UserPagination.fromMap(response);
    }on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      logger.d(e);
      throw Exception(e.toString());
    }
  }

  @override
  Future<User> getUser(int id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> likeUser(int id) {
    // TODO: implement likeUser
    throw UnimplementedError();
  }

  @override
  Future<void> recordView(int id) {
    // TODO: implement recordView
    throw UnimplementedError();
  }
}
