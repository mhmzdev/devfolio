import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/adaptive_text.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/service_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:folio/constants.dart';
import 'package:provider/provider.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nWhat I Do"),
          const CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          Wrap(
            runSpacing: height * 0.05,
            spacing: width * 0.05,
            alignment: WrapAlignment.center,
            children: List.generate(
              kServicesTitles.length,
              (index) => ServiceCard(
                cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                cardHeight: width < 1200 ? height * 0.37 : height * 0.35,
                serviceIcon: kServicesIcons[index],
                serviceTitle: kServicesTitles[index],
                serviceDescription: kServicesDescriptions[index],
                cardBack: ServiceCardBackWidget(
                  serviceTitle: kServicesTitles[index],
                  serviceDesc: kServicesDescriptions[index],
                  themeProvider: themeProvider,
                  height: height,
                  width: width,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key,
      required ThemeProvider themeProvider,
      required this.height,
      required this.width,
      required this.serviceDesc,
      required this.serviceTitle})
      : _themeProvider = themeProvider,
        super(key: key);

  final ThemeProvider _themeProvider;
  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: GoogleFonts.montserrat(
            color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            fontSize: height * 0.015,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w400,
            height: width < 900 ? 1.5 : 1.8,
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color:
              _themeProvider.lightTheme ? Colors.grey[400] : Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 40.0,
          width: 150.0,
          child: MaterialButton(
            color: kPrimaryColor,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      backgroundColor: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.grey[900],
                      title: AdaptiveText(
                        "Hire Me!",
                        style: TextStyle(
                            fontSize: 32.0,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Back"))
                      ],
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://api.whatsapp.com/send?phone=923460159889"),
                            btnColor: const Color(0xff34CB62),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(FontAwesomeIcons.whatsapp),
                                SizedBox(width: 8.0),
                                Text("WhatsApp"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          CustomFilledBtn(
                            height: 40.0,
                            onPressed: () => launchURL(
                                "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                            btnColor: const Color(0xff13A800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 35.0,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 8.0),
                                const Text("Upwork"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
            child: const Text(
              "HIRE ME!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
