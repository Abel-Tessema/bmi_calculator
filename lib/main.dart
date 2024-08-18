import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

// MaterialColor buildMaterialColor(Color color) {
//   List strengths = <double>[.05];
//   Map<int, Color> swatch = {};
//   final int r = color.red, g = color.green, b = color.blue;
//
//   for (int i = 1; i < 10; i++) {
//     strengths.add(0.1 * i);
//   }
//   for (var strength in strengths) {
//     final double ds = 0.5 - strength;
//     swatch[(strength * 1000).round()] = Color.fromRGBO(
//       r + ((ds < 0 ? r : (255 - r)) * ds).round(),
//       g + ((ds < 0 ? g : (255 - g)) * ds).round(),
//       b + ((ds < 0 ? b : (255 - b)) * ds).round(),
//       1,
//     );
//   }
//   return MaterialColor(color.value, swatch);
// }

// theme: ThemeData(
// primarySwatch: buildMaterialColor(const Color(0xFF0A0E21)),
// scaffoldBackgroundColor: buildMaterialColor(const Color(0xFF0A0E21)),
// floatingActionButtonTheme:
// const FloatingActionButtonThemeData(backgroundColor: Colors.purple),
// textTheme: const TextTheme(
// bodyMedium: TextStyle(color: Colors.white),
// ),
// ),

// colorScheme: ColorScheme.fromSwatch(
//     primarySwatch: buildMaterialColor(const Color(0xFF0A0E21))),

// textTheme: const TextTheme(
//   bodyMedium: TextStyle(color: Colors.white),
// ),
