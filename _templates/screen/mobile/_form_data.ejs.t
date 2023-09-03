---
to: "<%= formData ? `lib/ui/screens/${h.changeCase.snake(name)}/static/_form_data.dart` : null %>"
---
part of '../<%= h.changeCase.snake(name) %>.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (AppFlavor.isProd) {
      return {};
    }

    return {
      _FormKeys.email: "value",
    };
  }
}
