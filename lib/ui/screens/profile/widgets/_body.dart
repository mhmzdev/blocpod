part of '../profile.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Screen(
      bottomBar: true,
      keyboardHandler: true,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //
          ],
        ),
      ),
    );
  }
}
