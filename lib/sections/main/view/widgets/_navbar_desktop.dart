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
          const Spacer(),
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
