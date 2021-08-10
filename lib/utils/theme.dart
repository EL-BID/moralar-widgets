part of moralar_widgets;

ThemeData makeAppTheme() {
  const primaryColor = Color(0xFFfb2a47);
  const secondaryColor = Color(0xFF1950ef);
  const textColor = Color(0xFFb2b2b2);
  const secondaryTextColor = Color(0xFF606060);
  const dividerColor = Color(0xFFCCCCCC);

  const textTheme = TextTheme(
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
    headline4: TextStyle(
      fontSize: 18,
      color: MoralarColors.darkBlueGrey,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 16,
      color: MoralarColors.veryLightPink,
      fontWeight: FontWeight.normal,
    ),
    headline6: TextStyle(
      fontSize: 20,
      color: MoralarColors.waterBlue,
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

  const inputDecorationTheme = InputDecorationTheme(
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: dividerColor)),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
    alignLabelWithHint: true,
  );
  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      primary: primaryColor,
      elevation: 0,
      minimumSize: const Size(double.infinity, 50),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    highlightColor: dividerColor,
    accentColor: primaryColor,
    focusColor: secondaryColor,
    backgroundColor: Colors.white,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    dividerColor: dividerColor,
    elevatedButtonTheme: elevatedButtonTheme,
    fontFamily: 'SFProText',
  );
}
