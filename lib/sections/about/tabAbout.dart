import 'package:flutter/foundation.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/customBtn.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/aboutMeMetaData.dart';
import 'package:folio/widget/communityIconBtn.dart';
import 'package:folio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTab extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          Image.asset(
            'assets/mob.png',
            height: height * 0.3,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.028),
            ),
          ),
          SizedBox(
            height: height * 0.032,
          ),
          Text(
            "I'm Muhammad Hamza, a Flutter developer, Technical blog writer and UI designer.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.035,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I'm a Final Year Computer Science student enrolled in COMSATS University, Islamabad. I have been developing mobile apps for over 1.5 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. I'm an active Google Developer Student Clubs (DSC) lead and also CEO/Founder Flutter Islamabad, Pakistan.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.02,
              color: Colors.grey[500],
              height: 2.0,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.018),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kTools.length; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeMetaData(
                    data: "Name",
                    information: "Muhammad Hamza",
                  ),
                  AboutMeMetaData(
                    data: "Age",
                    information: "23",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeMetaData(
                    data: "Email",
                    information: "hamza.6.shakeel@gmail.com",
                  ),
                  AboutMeMetaData(
                    data: "From",
                    information: "Attock, PK",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedCustomBtn(
                    btnText: "Resume",
                    onPressed: () {
                      kIsWeb
                          ? html.window.open(
                              'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE',
                              "pdf")
                          : launchURL(
                              'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE');
                    }),
              ),
              Container(
                width: width * 0.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
                  ),
                ),
              ),
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          )
        ],
      ),
    );
  }
}
