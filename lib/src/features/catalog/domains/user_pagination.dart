import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:feature_first_with_getx/src/features/shared/domains/base_api_response_paging.dart';

import 'User.dart';

class UserPagination extends BaseApiResponsePaging {
  List<User> data;

  UserPagination(
    bool status,
    String error,
    int code,
    String msg,
    int? pageCount,
    int? totalItemCount,
    int? pageNumber,
    int? pageSize,
    bool? hasPreviousPage,
    bool? hasNextPage,
    bool? isFirstPage,
    bool? isLastPage,
    int? firstItemOnPage,
    int? lastItemOnPage, {
    required this.data,
  }) : super(
          status,
          error,
          code,
          msg,
          pageCount: pageCount,
          totalItemCount: totalItemCount,
          pageNumber: pageNumber,
          pageSize: pageSize,
          hasPreviousPage: hasPreviousPage,
          hasNextPage: hasNextPage,
          isFirstPage: isFirstPage,
          isLastPage: isLastPage,
          firstItemOnPage: firstItemOnPage,
          lastItemOnPage: lastItemOnPage,
        );

  UserPagination.fromMap(Map<String, dynamic> json)
      : data = json["data"] != null
            ? List<User>.from(json["data"].map((x) => User.fromMap(x)))
            : [],
        super.fromMap(json);

  factory UserPagination.fromJson(String source) =>
      UserPagination.fromMap(json.decode(source) as Map<String, dynamic>);
}
