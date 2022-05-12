import 'package:flutter/material.dart';
import 'package:material_design/ui/home.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 146, 15, 15),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple.shade500,
      elevation: 30,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontFamily: 'AkayaTelivigala',
        fontSize: 20,
      ),
    ),
    textTheme: _appTextTheme(base.textTheme),
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodyText2: base.bodyText2?.copyWith(
          color: Colors.deepPurple.shade900,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )
      .apply(
        fontFamily: 'Redressed',
      );
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _appTheme,
     
      home: MyHomePage(),
    ),
  );
}
