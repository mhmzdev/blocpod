part of '../login.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return Screen(
      keyboardHandler: true,
      formKey: screenState.formKey,
      initialFormValue: _FormData.initialValues(),
      padding: Space.a.t30,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FormBuilderTextField(
              name: _FormKeys.email,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            Space.y.t20,
            FormBuilderTextField(
              name: _FormKeys.password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: '* * * * * *',
              ),
            ),
            Space.y.t20,
            ElevatedButton(
              onPressed: () => AppRoutes.home.pushReplace(context),
              child: Text(
                'Login',
                style: AppText.b1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
