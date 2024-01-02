import 'package:flutter/material.dart';
import 'package:folio/configs/app_colors.dart';
import 'package:folio/sections/main/model/main_model.dart';
import 'package:provider/provider.dart';

import '../../../../configs/app_dimensions.dart';
import '../../../../configs/app_theme.dart';
import '../../../../configs/app_typography.dart';
import '../../../../configs/space.dart';
import '../../../../constants.dart';
import '../../../../provider/app_provider.dart';
import '../../../../provider/drawer_provider.dart';
import '../../../../provider/scroll_provider.dart';
import '../../../../utils/navbar_utils.dart';
import '../../../../utils/utils.dart';
import '../../../../widget/navbar_actions_button.dart';
import '../../../../widget/navbar_logo.dart';
import '../../../configs/app.dart';
import '../../../responsive/responsive.dart';
import '../../../widget/arrow_on_top.dart';

part 'widgets/_body.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_navbar_desktop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
