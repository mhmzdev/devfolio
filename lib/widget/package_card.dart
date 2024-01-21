import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/resources/app_spaces.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/shared_widgets/buttons/button.dart';

class PackageCard extends StatelessWidget {
  final String? banner;
  final int packageIndex;
  final String packageTitle;
  final String packageTime;
  final String freeTrial;
  final String packagePrice;
  final String packageDescription;
  final Color color;
  final Color borderColor;

  const PackageCard({
    Key? key,
    this.banner,
    this.color = Colors.transparent,
    this.borderColor = Colors.transparent,
    required this.packageIndex,
    this.packagePrice = '',
    this.packageTime = '',
    this.freeTrial = '',
    required this.packageTitle,
    required this.packageDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final index3 = packageIndex == 3;
    final index1 = packageIndex == 1;
    final List<String> check=
    [
      'App For you',
      'Admin Panel',
      'Free Trial',
      'Customer Support',
      'Updates',
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: AppDimensions.normalize(120),
      height: AppDimensions.normalize(190),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor.withOpacity(0.8), width: 0.2),
        boxShadow: [
          BoxShadow(
              color: borderColor.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 15)),
          // BoxShadow(
          //     color: borderColor.withOpacity(0.3),
          //     blurRadius: 13,
          //     offset: const Offset(0, 3))
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //! Title
        Center(
          child: Text(
            packageTitle,
            textAlign: TextAlign.center,
            style: context.subHeadLine.copyWith(color: borderColor),
          ),
        ),

        context.mediumGap,

        //! Price & Time
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              packagePrice.toString(),
              textAlign: TextAlign.center,
              style: index3
                  ? AppText.h3!.copyWith(color: borderColor)
                  : AppText.h2!.copyWith(color: borderColor),
            ),
            context.mediumGap,
            if (!index3)
              Text(
                packageTime,
                textAlign: TextAlign.center,
                style: context.subTitle.copyWith(color: borderColor),
              ),
          ],
        ),

        context.mediumGap,

        //! Description
        Text(
          packageDescription,
          textAlign: TextAlign.center,
          style: AppText.b2!.copyWith(color: borderColor),
        ),
        context.largeGap,
        Divider(
          color: borderColor.withOpacity(0.3),
          thickness: 0.5,
        ),
        context.largeGap,
       ListView.separated(
         shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
       separatorBuilder: (context, index) => context.mediumGap,
       itemBuilder: (context, index) => Row(
         children: [
           Container(
             width: 20,
             height: 20,
             decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(
                     width: 0.7,
                     color: borderColor
                 )
             ) ,
             child: const Icon(Icons.done,size: 10,),
           ),
           context.smallGap,
           Text(check[index],style: context.title.copyWith(color: borderColor),)
         ],
       ),
         itemCount: check.length,
       ),
        context.largeGap,
        Button(
            color: borderColor,
            label: 'Get Started', onPressed: (){

        })

      ]),
    );
  }
}
