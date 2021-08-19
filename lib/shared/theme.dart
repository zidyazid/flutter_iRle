part of 'shared.dart';

const double defaultMargin = 24;

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: purpleColor,
);

Color greyColor = "8D92A3".toColor();

Color purpleColor = "2F3676".toColor();

Color blueColor = "6E5DE7".toColor();

Color bgDarkBlue = "1A1D3A".toColor();

Color aquaColor = "0DF4D9".toColor();

Color greenColor = "34BBC3".toColor();

TextStyle purplefontStyle = GoogleFonts.poppins().copyWith(color: purpleColor);
TextStyle blueFontStyle = GoogleFonts.poppins().copyWith(color: blueColor);
TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle whiteFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500);
// TextStyle blackFontStyle1 = GoogleFonts.poppins();
TextStyle whiteFontStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);

ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.white,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return BorderSide(
          color: Colors.blue,
          width: 4,
        );
      return null; // Defer to the widget's default.
    },
  ),
);
