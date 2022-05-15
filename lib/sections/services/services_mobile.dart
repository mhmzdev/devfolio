import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/sections/services/services_desktop.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/service_card.dart';
import 'package:provider/provider.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nWhat I Do"),
        const CustomSectionSubHeading(
            text: "I may not be perfect, but I'm surely of some help :)\n\n"),
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ServiceCard(
              cardWidth: width < 650 ? width * 0.8 : width * 0.5,
              serviceIcon: kServicesIcons[i],
              serviceTitle: kServicesTitles[i],
              serviceDescription: kServicesDescriptions[i],
              cardBack: ServiceCardBackWidget(
                serviceTitle: kServicesTitles[i],
                serviceDesc: kServicesDescriptions[i],
                themeProvider: themeProvider,
                height: height,
                width: width,
              ),
            ),
          ),
          options: CarouselOptions(
            height: width < 450 ? height * 0.4 : height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
