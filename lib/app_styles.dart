import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // 🌟 App Bar Style
  static AppBar appBar(String title) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: appBarTitleStyle,
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: primaryGradient,
          boxShadow: [appBarShadow],
        ),
      ),
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  static final TextStyle appBarTitleStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.2),
        offset: Offset(1, 1),
        blurRadius: 2,
      ),
    ],
  );

  // 🎨 Color Palette & Gradients
  static const Color primaryColor = Color(0xFF2A2D7C);
  static const Color secondaryColor = Color(0xFF6C40C6);
  static const Color accentColor = Color(0xFFE84A5F);
  static const Color deepPurple = Color(0xFF4232A4);

  static final LinearGradient primaryGradient = LinearGradient(
    colors: [deepPurple, secondaryColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final LinearGradient cardGradient = LinearGradient(
    colors: [Colors.white, Color(0xFFF8F9FF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // 📦 Padding & Margins
  static const EdgeInsets defaultPadding = EdgeInsets.all(20);
  static const EdgeInsets cardPadding = EdgeInsets.all(24);
  static const EdgeInsets carouselPadding = EdgeInsets.symmetric(horizontal: 16);

  // 🔥 Borders & Radii
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(20));
  static const BorderRadius imageBorderRadius = BorderRadius.vertical(top: Radius.circular(20));
  static const BorderRadius textFieldBorderRadius = BorderRadius.all(Radius.circular(12));

  // 📏 Sizes & Dimensions
  static const double carouselHeight = 300;
  static const double carouselViewportFraction = 0.88;
  static const double placeImageHeight = 260;
  static const double iconSize = 28;
  static const double indicatorSize = 10; // Fixed indicator size for carousel

  // ☁ Shadow Effects
  static final BoxShadow cardShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 20,
    spreadRadius: 1,
    offset: Offset(0, 6),
  );

  static final BoxShadow appBarShadow = BoxShadow(
    color: deepPurple.withOpacity(0.3),
    blurRadius: 12,
    spreadRadius: 2,
    offset: Offset(0, 4),
  );

  // 🖤 Dark Theme
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF121212),
    cardColor: Color(0xFF1E1E1E),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).copyWith(
      bodyLarge: TextStyle(color: Colors.white70),
      bodyMedium: TextStyle(color: Colors.white60),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF2A2A2A),
      border: OutlineInputBorder(
        borderRadius: textFieldBorderRadius,
        borderSide: BorderSide.none,
      ),
    ),
  );

  // 🌞 Light Theme
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xFFF8F9FF),
    cardColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme).copyWith(
      bodyLarge: TextStyle(color: primaryColor),
      bodyMedium: TextStyle(color: Color(0xFF6A6A6A)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: textFieldBorderRadius,
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: textFieldBorderRadius,
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
    ),
  );

  // 🏷️ Text Styles
  static final TextStyle placeNameStyle = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    letterSpacing: 0.8,
  );

  static final TextStyle placeDescriptionStyle = GoogleFonts.openSans(
    fontSize: 16,
    color: Colors.grey.shade700,
    height: 1.7,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle noPlacesFoundStyle = GoogleFonts.poppins(
    fontSize: 20,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );

  // 🎛️ Card Styles
  static CardTheme modernCardTheme = CardTheme(
    elevation: 8,
    margin: EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
      borderRadius: defaultBorderRadius,
    ),
  );

  static BoxDecoration cardTapDecoration(bool isDark) => BoxDecoration(
    borderRadius: defaultBorderRadius,
    color: isDark ? darkTheme.cardColor : Colors.white,
    boxShadow: [cardShadow],
    gradient: isDark ? null : cardGradient,
  );

  // 🖼️ Image Decoration
  static BoxDecoration imageDecoration = BoxDecoration(
    borderRadius: imageBorderRadius,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 12,
        offset: Offset(0, 4),
      ),
    ],
  );

  // 🛠️ Input Decoration
  static InputDecoration inputDecoration(String hint) => InputDecoration(
    hintText: hint,
    hintStyle: GoogleFonts.poppins(
      color: Colors.grey.shade400,
      fontSize: 14,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    suffixIconColor: accentColor,
    prefixIconColor: Colors.grey.shade500,
  );

  // 🎯 Button Style
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: accentColor,
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 4,
    shadowColor: accentColor.withOpacity(0.3),
  );

  // ✨ Icon Style
  static IconThemeData accentIconTheme = IconThemeData(
    color: accentColor,
    size: iconSize,
  );
}
