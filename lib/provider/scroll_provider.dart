import 'package:flutter/cupertino.dart';
import 'package:folio/configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 360
        : index == 2
            ? 255
            : index == 3
                ? 250
                : 245;

    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  bool isScrolled = false;

  set setIsScrolled (bool isScroll) {
    isScrolled = isScroll;

    notifyListeners();
  }

  void listen () {
    controller.addListener(
            () {
          double currentScroll = controller.position.pixels;

          if (currentScroll >= 200) {
            setIsScrolled = true;

          } else {
            setIsScrolled = false;

          }
        }
    );
  }
}
