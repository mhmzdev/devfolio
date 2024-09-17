import 'package:devfolio/components/service_card.dart';
import 'package:devfolio/utils/assets.dart';
import 'package:jaspr/jaspr.dart';

class ServicesSection extends StatelessComponent {
  const ServicesSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final List<Map<String, dynamic>> services = [
      {
        'icon': StaticAssets.app,
        'title': 'Mobile Development',
      },
      {
        'icon': StaticAssets.ui,
        'title': 'UI/UX Design',
      },
      {
        'icon': StaticAssets.rapid,
        'title': 'Rapid Prototyping',
      },
      {
        'icon': StaticAssets.blog,
        'title': 'Technical Writing',
      },
      {
        'icon': StaticAssets.open,
        'title': 'Open Source - GitHub',
      },
    ];

    yield section(classes: 'services-section', [
      span(classes: 'title', [
        text('What I can do?'),
      ]),
      span(classes: 'subtitle', [
        text("I may not be perfect but surely I'm of some use :)"),
      ]),
      div(classes: 'section-body', id: 'services', [
        for (final service in services)
          ServiceCard(
            icon: service['icon'],
            label: service['title'],
          ),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.services-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh),
        ),
    css('.section-body')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          wrap: FlexWrap.wrap,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 100.percent,
        ),
  ];
}
