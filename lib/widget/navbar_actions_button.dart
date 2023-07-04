import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  final Color color;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    final isGetStartedButton = index == 4;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin:   Space.h!,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40)
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10)
          ),
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: isGetStartedButton ? Colors.transparent :  color,
          color: isGetStartedButton ? Colors.black : null,
          onPressed: () {
            scrollProvider.scroll(index);
          },
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              label,
              style: AppText.l1!.copyWith(
                color: isGetStartedButton ? Colors.white :  Colors.black
              ),
            ),
          ),
        ),
      ),
    );
  }
}
