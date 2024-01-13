part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return EntranceFader(
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\n Our Services',
          ),
          const CustomSectionSubHeading(
            text: 'What We Provide ?\n\n',
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                serviceIcon: ServicesUtils.servicesIcons[e.key],
                serviceTitle: ServicesUtils.servicesTitles[e.key],
                serviceDescription: ServicesUtils.servicesDescription[e.key],
              ),
            )
                .toList(),
          )
        ],
      ),
    );
    //   Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Opacity(
    //       opacity: 0.3,
    //       child: SizedBox(
    //         height: 600,
    //         width: double.infinity,
    //         child: Transform.flip(
    //             child: Image.asset(fit: BoxFit.cover, Assets.photosBlur)),
    //       ),
    //     ),
    //     EntranceFader(
    //       child: Column(
    //         children: [
    //           const CustomSectionHeading(
    //             text: '\n Our Services',
    //           ),
    //           const CustomSectionSubHeading(
    //             text: 'What We Provide ?\n\n',
    //           ),
    //           Space.y!,
    //           Wrap(
    //             spacing: width * 0.05,
    //             runSpacing: height * 0.05,
    //             alignment: WrapAlignment.center,
    //             crossAxisAlignment: WrapCrossAlignment.center,
    //             children: ServicesUtils.servicesIcons
    //                 .asMap()
    //                 .entries
    //                 .map(
    //                   (e) => _ServiceCard(
    //                 serviceIcon: ServicesUtils.servicesIcons[e.key],
    //                 serviceTitle: ServicesUtils.servicesTitles[e.key],
    //                 serviceDescription: ServicesUtils.servicesDescription[e.key],
    //               ),
    //             )
    //                 .toList(),
    //           )
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
