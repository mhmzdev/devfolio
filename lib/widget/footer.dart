import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/adaptive_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      color: themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AdaptiveText(
              "Developed in 💙 with ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                color: themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            ),
            InkWell(
              onTap: () => launchURL("https://github.com/mhmzdev/DevFolio"),
              child: const Text(
                "Flutter",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
