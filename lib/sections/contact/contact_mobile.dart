import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/shared_widgets/buttons/button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/generated/assets.dart';
import 'package:folio/shared_widgets/text_field.dart';
import 'package:folio/widget/custom_text_heading.dart';
class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together :)\n\n",
        ),
        Column(
          children: [
            const CustomSectionHeading(
              text: '\nGet Started\n',
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    Assets.photosGetStarted,
                    fit: BoxFit.cover,
                    height: 550,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  child: Column(
                    children: [
                      Text(
                        "Contact Us",
                        style: AppText.h1b,
                      ),
                      context.mediumGap,
                      const BaseTextField(
                        hint: "Name",
                        textInputType: TextInputType.name,
                      ), context.mediumGap,
                      const BaseTextField(
                        hint: "Email",
                        textInputType: TextInputType.emailAddress,
                      ), context.mediumGap,
                      const BaseTextField(
                        hint: "Phone",
                        textInputType: TextInputType.phone,
                      ), context.mediumGap,
                      const BaseTextField(
                        hint: "Message",
                        textInputType: TextInputType.text,
                        maxLines: 4,
                      ),
                      context.mediumGap,
                      Button(
                          color: ColorManager.primaryColor,
                          label: 'Send', onPressed: (){

                      })
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
