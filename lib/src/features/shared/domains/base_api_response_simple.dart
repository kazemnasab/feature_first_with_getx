class BaseApiResponseSimple {
  late bool status;
  late String error;
  late int code;
  late String msg;


  BaseApiResponseSimple(this.status, this.error, this.code, this.msg);

  BaseApiResponseSimple.fromMap(Map<String, dynamic> json)
      : status = json['status'] ?? false,
        error = json['error'] ?? "",
        code = json["code"] ?? 0,
        msg = json['msg'] ?? "";

  // Private constructor
  BaseApiResponseSimple._privateConstructor(
    this.status,
    this.error,
    this.code,
    this.msg,
  );

  // Singleton instance
  static BaseApiResponseSimple? _api_error;

  // Factory constructor to provide access to the singleton instance
  factory BaseApiResponseSimple.apiError() {
    _api_error ??= BaseApiResponseSimple._privateConstructor(
      false,
      "api error",
      0,
      "",
    );
    return _api_error!;
  }
}
