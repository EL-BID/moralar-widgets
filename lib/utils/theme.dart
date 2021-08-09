part of moralar_widgets;

ThemeData makeAppTheme() {
  const primaryColor = Color(0xFFfb2a47);
  const secondaryColor = Color(0xFF1950ef);
  const textColor = Color(0xFFb2b2b2);
  const secondaryTextColor = Color(0xFF606060);
  const dividerColor = Color(0xFFCCCCCC);

  final textTheme = TextTheme(
    headline1: const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline2: const TextStyle(
      fontSize: 20,
      color: primaryColor,
      fontWeight: FontWeight.bold,
    ),
    headline3: const TextStyle(
      fontSize: 16,
      color: primaryColor,
    ),
    headline4: TextStyle(
      fontSize: 18,
      color: Assets.colors.darkBlueGrey,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 16,
      color: Assets.colors.veryLightPink,
      fontWeight: FontWeight.normal,
    ),
    headline6: TextStyle(
      fontSize: 20,
      color: Assets.colors.waterBlue,
    ),
    bodyText1: const TextStyle(
      fontSize: 14,
      color: textColor,
    ),
    bodyText2: const TextStyle(
      fontSize: 14,
      color: secondaryTextColor,
    ),
    button: const TextStyle(
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
