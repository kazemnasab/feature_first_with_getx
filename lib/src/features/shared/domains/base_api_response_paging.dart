import 'package:feature_first_with_getx/src/features/shared/domains/base_api_response_simple.dart';

class BaseApiResponsePaging extends BaseApiResponseSimple {
  int? pageCount;
  int? totalItemCount;
  int? pageNumber;
  int? pageSize;
  bool? hasPreviousPage;
  bool? hasNextPage;
  bool? isFirstPage;
  bool? isLastPage;
  int? firstItemOnPage;
  int? lastItemOnPage;

  BaseApiResponsePaging(
    bool status,
    String error,
    int code,
    String msg, {
    this.pageCount,
    this.totalItemCount,
    this.pageNumber,
    this.pageSize,
    this.hasPreviousPage,
    this.hasNextPage,
    this.isFirstPage,
    this.isLastPage,
    this.firstItemOnPage,
    this.lastItemOnPage,
  }) : super(status, error, code, msg);

  BaseApiResponsePaging.fromMap(Map<String, dynamic> json)
      : pageCount = json["total_pages"] ?? 1,
        totalItemCount = json["total"] ?? 100,
        pageNumber = json["page"] ?? 1,
        pageSize = json["per_page"] ?? 100,
        hasPreviousPage = json["hasPreviousPage"] ?? false,
        hasNextPage = json["hasNextPage"] ?? false,
        isFirstPage = json["isFirstPage"] ?? true,
        isLastPage = json["isLastPage"] ?? true,
        firstItemOnPage = json["firstItemOnPage"] ?? 1,
        lastItemOnPage = json["lastItemOnPage"] ?? 1,
        super.fromMap(json);
}
