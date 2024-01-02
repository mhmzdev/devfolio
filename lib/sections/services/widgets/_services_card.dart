part of '../services.dart';

class _ServiceCard extends StatelessWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const _ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.normalize(100),
      height: AppDimensions.normalize(90),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
          color: ColorManager.darkPrimaryColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: ColorManager.primaryColor.withOpacity(0.5), width: 0.2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => const RadialGradient(
              center: Alignment.bottomLeft,
              stops: [0, 1],
              colors: ColorManager.gradientBackground,
            ).createShader(bounds),
            child: Image.asset(
              serviceIcon,
              height: AppDimensions.normalize(25),
              color: ColorManager.primaryColor,
            ),
          ),
          Space.y1!,
          Text(
            serviceTitle,
            textAlign: TextAlign.center,
            style: AppText.b2,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            serviceDescription,
            textAlign: TextAlign.center,
            style: AppText.l1!.copyWith(color: ColorManager.greyText),
          ),
        ],
      ),
    );

    //   InkWell(
    //   hoverColor: Colors.transparent,
    //   splashColor: Colors.transparent,
    //   highlightColor: Colors.transparent,
    //   onTap: () {
    //     cardKey.currentState!.toggleCard();
    //   },
    //   onHover: (isHovering) {
    //     if (isHovering) {
    //       setState(() {
    //         isHover = true;
    //       });
    //     } else {
    //       setState(() {
    //         isHover = false;
    //       });
    //     }
    //   },
    //   child: FlipCard(
    //     flipOnTouch: kIsWeb ? false : true,
    //     key: cardKey,
    //     back: Container(
    //       width: AppDimensions.normalize(100),
    //       height: AppDimensions.normalize(80),
    //       padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
    //       decoration: BoxDecoration(
    //         color: appProvider.isDark ? Colors.grey[900] : Colors.white,
    //         borderRadius: BorderRadius.circular(15),
    //         boxShadow: isHover
    //             ? [
    //                 BoxShadow(
    //                   color: AppTheme.c!.primary!.withAlpha(100),
    //                   blurRadius: 12.0,
    //                   offset: const Offset(0.0, 0.0),
    //                 )
    //               ]
    //             : [
    //                 BoxShadow(
    //                   color: Colors.black.withAlpha(100),
    //                   blurRadius: 12.0,
    //                   offset: const Offset(0.0, 0.0),
    //                 )
    //               ],
    //       ),
    //       child: _ServiceCardBackWidget(
    //         serviceDesc: widget.serviceDescription,
    //         serviceTitle: widget.serviceTitle,
    //       ),
    //     ),
    //     front: Container(
    //       width: AppDimensions.normalize(100),
    //       height: AppDimensions.normalize(80),
    //       padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
    //       decoration: BoxDecoration(
    //         color: appProvider.isDark ? Colors.grey[900] : Colors.white,
    //         borderRadius: BorderRadius.circular(15),
    //         boxShadow: isHover
    //             ? [
    //                 BoxShadow(
    //                   color: AppTheme.c!.primary!.withAlpha(100),
    //                   blurRadius: 12.0,
    //                   offset: const Offset(0.0, 0.0),
    //                 )
    //               ]
    //             : [
    //                 BoxShadow(
    //                   color: Colors.black.withAlpha(100),
    //                   blurRadius: 12.0,
    //                   offset: const Offset(0.0, 0.0),
    //                 )
    //               ],
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             widget.serviceIcon,
    //             height: AppDimensions.normalize(30),
    //             color: widget.serviceIcon.contains(StaticUtils.openSource) &&
    //                     !appProvider.isDark
    //                 ? Colors.black
    //                 : null,
    //           ),
    //           Space.y1!,
    //           Text(
    //             widget.serviceTitle,
    //             textAlign: TextAlign.center,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
