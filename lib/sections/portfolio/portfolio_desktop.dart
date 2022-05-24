import 'package:flutter/material.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import 'package:folio/constants.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  ScrollController scrollController = ScrollController();
  double scrollValue = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nPortfolio"),
          const CustomSectionSubHeading(
              text: "Here are few samples of my previous work :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Slider(
            value: scrollValue,
            min: 0,
            onChanged: (value) {
              setState(() {
                scrollValue = value;
                scrollController.animateTo(
                  value * width,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
