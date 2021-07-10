import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final String serviceLink;
  final double cardWidth;
  final double cardHeight;
  final Widget cardBack;

  const ServiceCard({
    @required this.serviceIcon,
    this.serviceTitle,
    this.serviceDescription,
    this.serviceLink,
    this.cardHeight,
    this.cardWidth,
    this.cardBack,
  });

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
          cardKey.currentState.toggleCard();
        } else {
          setState(() {
            isHover = false;
          });
          cardKey.currentState.toggleCard();
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
            width: widget.cardWidth,
            height: widget.cardHeight,
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color:
                  _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
              border: Border(
                bottom: isHover
                    ? BorderSide(
                        color: kPrimaryColor,
                        width: 3.0,
                      )
                    : BorderSide(),
              ),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: kPrimaryColor.withAlpha(100),
                        blurRadius: 12.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ]
                  : [
                      BoxShadow(
                        color: Colors.black.withAlpha(100),
                        blurRadius: 12.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
            ),
            child: widget.cardBack),
        front: Container(
          width: widget.cardWidth,
          height: widget.cardHeight,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
            border: Border(
              bottom: isHover
                  ? BorderSide(
                      color: kPrimaryColor,
                      width: 3.0,
                    )
                  : BorderSide(),
            ),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: kPrimaryColor.withAlpha(100),
                      blurRadius: 12.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: height * 0.125,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: height * 0.022,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                  color:
                      _themeProvider.lightTheme ? Colors.black : Colors.white,
                ),
              ),
              // SizedBox(
              //   height: height * 0.01,
              // ),
              // Expanded(
              //   child: Text(
              //     widget.serviceDescription,
              //     textAlign: TextAlign.center,
              //     style: GoogleFonts.montserrat(
              //         color: _themeProvider.lightTheme
              //             ? Colors.black
              //             : Colors.white,
              //         fontSize: height * 0.015,
              //         letterSpacing: 2.0,
              //         fontWeight: FontWeight.w200,
              //         height: width < 900 ? 1.5 : 1.8),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
