part of '../home.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      child: SafeArea(
          child: Center(
        child: ElevatedButton(
          onPressed: () => AppRoutes.login.pushReplace(context),
          child: const Text(
            'Login',
          ),
        ),
      )),
    );
  }
}
