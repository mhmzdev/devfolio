import 'package:flutter/material.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double? height;
  const NavBarLogo({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "< ",
            style: TextStyle(
              fontSize: height ?? 20,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          Text(
            "Hamza",
            style: TextStyle(
              fontFamily: "Agustina",
              fontSize: height ?? 20,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          Text(
            MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: TextStyle(
              fontSize: height ?? 20,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
