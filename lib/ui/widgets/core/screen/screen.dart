import 'dart:io';

import 'package:bloced_archi/configs/configs.dart';
import 'package:bloced_archi/ui/widgets/core/bottom_bar/bottom_bar.dart';
import 'package:bloced_archi/ui/widgets/headless/focus_handler.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.keyboardHandler = false,
    this.renderSettings = true,
    this.bottomBar = false,
    this.resizeToAvoidBottomInset = false,
    this.floatingActionButton,
    this.scaffoldBackgroundColor,
    this.belowBuilders,
    this.overlayBuilders,
    this.initialFormValue,
    this.formKey,
    this.onBackPressed,
  });

  final Widget child;
  final EdgeInsets padding;
  final bool keyboardHandler;
  final bool renderSettings;
  final bool bottomBar;
  final Widget? floatingActionButton;
  final Color? scaffoldBackgroundColor;
  final List<Widget>? belowBuilders;
  final List<Widget>? overlayBuilders;
  final Map<String, dynamic>? initialFormValue;
  final GlobalKey<FormBuilderState>? formKey;
  final bool resizeToAvoidBottomInset;
  final Future<bool> Function()? onBackPressed;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    Widget body = child;

    if (formKey != null) {
      body = FormBuilder(
        key: formKey,
        initialValue: initialFormValue ?? {},
        child: body,
      );
    }

    if (keyboardHandler) {
      body = FocusHandler(child: body);
    }

    if (!kIsWeb) {
      body = ConditionalWillPopScope(
        shouldAddCallback: Platform.isAndroid,
        onWillPop: () async {
          return true;
        },
        child: body,
      );
    }

    body = Padding(padding: padding, child: body);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: scaffoldBackgroundColor,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomBar ? const BottomBar() : null,
        body: Stack(
          fit: StackFit.expand,
          children: [
            if (belowBuilders != null) ...belowBuilders!,
            Positioned.fill(
              child: body,
            ),
            if (overlayBuilders != null) ...overlayBuilders!,
          ],
        ),
      ),
    );
  }
}
