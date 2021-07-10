import 'package:flutter/material.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
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
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          Text(
            "Hamza",
            style: TextStyle(
              fontFamily: "Agustina",
              fontSize: height ?? 20,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          Text(
            MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: TextStyle(
              fontSize: height ?? 20,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
