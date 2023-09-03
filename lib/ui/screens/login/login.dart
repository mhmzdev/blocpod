import 'package:bloced_archi/configs/configs.dart';
import 'package:bloced_archi/router/routes.dart';
import 'package:bloced_archi/ui/widgets/core/screen/screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

part '_state.dart';

part 'static/_form_data.dart';
part 'static/_form_keys.dart';

part 'widgets/_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
