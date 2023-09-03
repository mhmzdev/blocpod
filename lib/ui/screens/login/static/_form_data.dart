part of '../login.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (kDebugMode) {
      return {
        _FormKeys.email: "something@gmail.com",
        _FormKeys.password: "pre-filled",
      };
    }

    return {};
  }
}
