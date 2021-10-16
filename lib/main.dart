import 'package:aswaamozhela/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aswaamozhela/constans.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/src/widgets/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Aswaa Mozhela',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: KPrimaryColor, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: KPrimaryColor),
      ),
      //arabic rtl
      localizationsDelegates:const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar","AE")],
      locale: Locale("ar","AE"),
      home: HomeScreen(),
    );
  }
}