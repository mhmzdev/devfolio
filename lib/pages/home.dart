import 'package:devfolio/components/nav_bar.dart';
import 'package:devfolio/sections/about_me.dart';
import 'package:devfolio/sections/basic_info.dart';
import 'package:devfolio/sections/services.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'home-body', [
      NavBar(),
      BasicInfoSection(),
      AboutMeSection(),
      ServicesSection(),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.home-body')
        .box(
          width: 100.vw,
          padding: EdgeInsets.symmetric(horizontal: 50.px),
        )
        .background(
          color: Colors.black,
        ),
  ];
}
