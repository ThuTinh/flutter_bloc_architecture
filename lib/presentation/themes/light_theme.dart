import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LightTheme {
  static final themeData = ThemeData(
    fontFamily: "Soleil",
    accentColor: Color(0xffd5232b),
    hintColor: Color(0xffacacb0),
    buttonColor: Color(0xff3cccd4),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff99A3B6)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          final color = Color(0xff3cccd4);
          return states.contains(MaterialState.disabled) ? color.withOpacity(0.6) : color;
        }),
        foregroundColor: MaterialStateProperty.all(Color(0xffffffff)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
          side: BorderSide.none,
        )),
        textStyle: MaterialStateProperty.all(TextStyle(
          color: Color(0xff424f68),
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
        )),
        elevation: MaterialStateProperty.all(0.0),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xffffffff)),
        foregroundColor: MaterialStateProperty.all(Color(0xff424f68)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        )),
        side: MaterialStateProperty.resolveWith((states) {
          final color = Color(0xff99A3B6);
          return BorderSide(
            color: states.contains(MaterialState.disabled) ? color.withOpacity(0.6) : color,
            style: BorderStyle.solid,
            width: 1.0,
          );
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          final color = Color(0xff424f68);
          return TextStyle(
            color: states.contains(MaterialState.disabled) ? color.withOpacity(0.6) : color,
            fontSize: 12.0.sp,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          );
        }),
        elevation: MaterialStateProperty.all(0.0),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            final color = Color(0xff424f68);
            return states.contains(MaterialState.disabled) ? color.withOpacity(0.6) : color;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith((states) {
          final color = Color(0xff424f68);
          return TextStyle(
            color: states.contains(MaterialState.disabled) ? color.withOpacity(0.6) : color,
            fontSize: 12.0.sp,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          );
        }),
        elevation: MaterialStateProperty.all(0.0),
      ),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 13.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      bodyText2: TextStyle(
        fontSize: 12.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline1: TextStyle(
        fontSize: 20.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline2: TextStyle(
        fontSize: 18.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline3: TextStyle(
        fontSize: 16.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline4: TextStyle(
        fontSize: 14.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline5: TextStyle(
        fontSize: 12.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      headline6: TextStyle(
        fontSize: 10.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Color(0xff424f68),
        height: 1.4,
      ),
      subtitle1: TextStyle(
        fontSize: 11.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xffb5b6bc),
        height: 1.4,
      ),
      subtitle2: TextStyle(
        fontSize: 10.0.sp,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xffb5b6bc),
        height: 1.4,
      ),
    ),
  );
}
