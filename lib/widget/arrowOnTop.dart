import 'package:folio/constants.dart';
import 'package:flutter/material.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:provider/provider.dart';

class ArrowOnTop extends StatefulWidget {
  final VoidCallback onPressed;

  const ArrowOnTop({Key key, this.onPressed}) : super(key: key);

  @override
  _ArrowOnTopState createState() => _ArrowOnTopState();
}

class _ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: widget.onPressed,
            onHover: (isHovering) {
              if (isHovering) {
                setState(() {
                  isHover = true;
                });
              } else {
                setState(() {
                  isHover = false;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color:
                    _themeProvider.lightTheme ? Colors.grey[200] : Colors.grey[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                boxShadow: isHover
                    ? [
                        BoxShadow(
                          color: _themeProvider.lightTheme
                              ? Colors.black12
                              : kPrimaryColor.withAlpha(200),
                          blurRadius: 12.0,
                          offset: Offset(2.0, 3.0),
                        )
                      ]
                    : [],
              ),
              child: Icon(
                Icons.arrow_drop_up_outlined,
                color: kPrimaryColor,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
