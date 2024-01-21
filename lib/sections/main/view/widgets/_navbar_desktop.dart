part of '../main_section.dart';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  void initState() {
    // TODO: implement init State
    super.initState();
    Provider.of<ScrollProvider>(context, listen: false).listen();
  }

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Container(
      // height: 150,
      color: scrollProvider.isScrolled
          ? ColorManager.backgroundColor
          : Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          context.largeGap,
          const NavBarLogo(),
          const Spacer(),
          ...MainModel.titles.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value.title,
                  color: e.value.color,
                  index: e.key,
                ),
              ),
          const Spacer(),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: Container(
              margin: Space.h!,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                      colors: ColorManager.gradientBackground)),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                splashColor: ColorManager.primaryColor,
                highlightColor: ColorManager.primaryColor,
                hoverColor: ColorManager.grey.withOpacity(0.3),
                onPressed: () {
                  scrollProvider.scroll(4);
                },
                child: Padding(
                  padding: Space.all(0.5, 0.45),
                  child: Text(
                    'Get Started',
                    style: AppText.l1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          context.largeGap,
        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: Space.v!,
      child: Row(
        children: [
          Space.x1!,
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          // const NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}
