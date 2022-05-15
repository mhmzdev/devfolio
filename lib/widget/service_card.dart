import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String? serviceTitle;
  final String? serviceDescription;
  final double? cardWidth;
  final double? cardHeight;
  final Widget? cardBack;

  const ServiceCard({
    Key? key,
    required this.serviceIcon,
    this.serviceTitle,
    this.serviceDescription,
    this.cardHeight,
    this.cardWidth,
    this.cardBack,
  }) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
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
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: widget.cardWidth,
          height: widget.cardHeight,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: themeProvider.lightTheme ? Colors.white : Colors.grey[900],
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: kPrimaryColor.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: widget.cardBack,
        ),
        front: Container(
          width: widget.cardWidth,
          height: widget.cardHeight,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: themeProvider.lightTheme ? Colors.white : Colors.grey[900],
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: kPrimaryColor.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: height * 0.125,
                color: widget.serviceIcon == "assets/services/open.png"
                    ? themeProvider.lightTheme
                        ? Colors.black
                        : Colors.white
                    : null,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                widget.serviceTitle!,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: height * 0.022,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                  color: themeProvider.lightTheme ? Colors.black : Colors.white,
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
