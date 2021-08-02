part of moralar_widgets;

ThemeData makeAppTheme() {
  final primaryColor = Color(0xFFfb2a47);
  final secondaryColor = Color(0xFF1950ef);
  final textColor = Color(0xFFb2b2b2);
  final secondaryTextColor = Color(0xFF606060);
  final dividerColor = Color(0xFFCCCCCC);

  final textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 20,
      color: primaryColor,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 16,
      color: primaryColor,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: textColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      color: secondaryTextColor,
    ),
    button: TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  final inputDecorationTheme = InputDecorationTheme(
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: dividerColor)),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
    alignLabelWithHint: true,
  );
  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      primary: primaryColor,
      elevation: 0,
      minimumSize: Size(double.infinity, 50),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    highlightColor: secondaryColor,
    accentColor: primaryColor,
    backgroundColor: Colors.white,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    dividerColor: dividerColor,
    elevatedButtonTheme: elevatedButtonTheme,
    fontFamily: 'SFProText',
  );
}
