import 'package:cash_register_app/views/RootPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olivetti cash Register',
      theme: _buildLightTheme(),
      home: RootPage(title: 'Flutter Demo Home Page'),
    );
  }

  ThemeData _buildLightTheme() {
    const Color primaryColor = Color(0xFFF2A359);
    const Color secondaryColor = Color(0xFFEECF6D);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    return ThemeData(
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      toggleableActiveColor: const Color(0xFF1E88E5),
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      errorColor: const Color(0xFFB00020),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      
    );
  }
}
