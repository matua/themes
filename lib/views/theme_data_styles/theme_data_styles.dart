import 'package:flutter/material.dart';
import 'package:themes/views/theme_data_styles/main_orange_palette.dart';

class ThemeDataStyles {
  static Color? mainOrange = Colors.deepOrange[200];
  static Color? grey = Colors.grey[600];

  static ThemeData mainThemeData() {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(Colors.grey[300])),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          ),
        ),
      ),
      textTheme: TextTheme(
        titleSmall: TextStyle(color: Colors.white),
        titleLarge:
            TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: grey),
      ),
      dialogTheme: DialogTheme(
          titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
      )),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 21),
      ),
      chipTheme: ChipThemeData(disabledColor: Colors.grey[200]),
    );
  }

  static ThemeData orangeThemeData() {
    return ThemeData(
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.blue),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: grey),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: mainOrange),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: grey,
      ),
      primarySwatch: MainOrangePalette.mainOrange,
      chipTheme: ChipThemeData(
        disabledColor: Colors.grey[400],
        backgroundColor: grey,
        selectedColor: mainOrange,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        showCheckmark: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(12),
        color: Colors.deepOrange[100],
        shadowColor: grey,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      dialogTheme: DialogTheme(
          backgroundColor: Colors.grey[500],
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          )),
      appBarTheme: AppBarTheme(
        color: grey,
        foregroundColor: mainOrange,
        centerTitle: false,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(mainOrange),
        ),
      ),
      textTheme: TextTheme(
        titleSmall: TextStyle(color: Colors.white),
        titleLarge: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
