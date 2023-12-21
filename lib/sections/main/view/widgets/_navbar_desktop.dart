part of '../main_section.dart';

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      height: 150,
      color: appProvider.isDark ? Colors.black : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Space.xm!,

          const NavBarLogo(),
          Space.x!,

          ...MainModel.titles.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value.title,
                  color: e.value.color,
                  index: e.key,
                ),
              ),

          // Switch(r: Colors.grey,
          //   value: appProvider.isDark,
          //   onChanged: (value) {
          //   inactiveTrackColo
          //     appProvider.setTheme(
          //       !value ? ThemeMode.light : ThemeMode.dark,
          //     );
          //   },
          //   activeColor: AppTheme.c!.primary!,
          // ),
          Space.xm!,
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
            ),
          ),
          Space.xm!,
          const NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}
