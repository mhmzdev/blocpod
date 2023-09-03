part of '../configs.dart';

abstract class AppTheme {
  static const yellow = ColorRef(Color(0xffFED403), id: 'yellow');
  static const pink = ColorRef(Color(0xffDB3065), id: 'pink');
  static const purple = ColorRef(Color(0xff312682), id: 'purple');
  static const blue = ColorRef(Color(0xff275DC6), id: 'blue');
  static const grey = ColorRef(Color(0xff9A9A9A), id: 'grey');
  static const lightGrey = ColorRef(Color(0xffD5D7DC), id: 'lightGrey');
  static const darkGrey = ColorRef(Color(0xff2C2C2C), id: 'darkGrey');
  static const danger = ColorRef(Color(0xffE74C3C), id: 'danger');

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        useMaterial3: false,
        primaryColor: yellow,
        primarySwatch: Colors.pink,
        highlightColor: Colors.grey.withOpacity(0.1),
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      );
}
