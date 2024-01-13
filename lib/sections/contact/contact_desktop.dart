import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/generated/assets.dart';
import 'package:folio/shared_widgets/text_field.dart';
import 'package:folio/widget/custom_text_heading.dart';

import '../../animations/entrance_fader.dart';
import '../../resources/theme/app_colors.dart';
import '../../shared_widgets/buttons/button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        AppDimensions.normalize(70),
        0,
        0,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 1,
            child: Image.asset(
              alignment: Alignment.bottomCenter,
              Assets.photosContact,
              fit: BoxFit.cover,
              height: 800 ,
               width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,right: 30),
             child: SizedBox(
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
                  //! Button
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: ColorManager.gradientBackground)),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      splashColor: ColorManager.primaryColor,
                      highlightColor: ColorManager.primaryColor,
                      hoverColor: ColorManager.grey.withOpacity(0.3),
                      onPressed: () {
                      },
                      child: Padding(
                        padding: Space.all(0.5, 0.45),
                        child: Text(
                          "Send",
                          style: AppText.l1!
                              .copyWith(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
