import 'package:devfolio/components/contact.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final List<Map<String, dynamic>> contactInfo = [
      {
        'icon': 'fa-duotone fa-solid fa-house',
        'title': 'Location',
        'description': 'Islamabad, PK',
        'action': 'https://maps.app.goo.gl/ek2SSNh26K1i4HNF6',
      },
      {
        'icon': 'fa-duotone fa-solid fa-phone',
        'title': 'Phone',
        'description': '+92 346 0159889',
        'action': 'https://wa.me/923460159889',
      },
      {
        'icon': 'fa-duotone fa-solid fa-envelope',
        'title': 'Email',
        'description': 'hamza.6.shakeel@gmail.com',
        'action': 'mailto:hamza.6.shakeel@gmail.com',
      },
    ];

    yield section(classes: 'contact-section', [
      span(classes: 'title', [
        text('Get in Touch'),
      ]),
      span(classes: 'subtitle', [
        text("Let's build something together :)"),
      ]),
      div(classes: 'contact-body', id: 'contact', [
        for (final contact in contactInfo)
          ContactCard(
            icon: contact['icon'],
            title: contact['title'],
            description: contact['description'],
            action: contact['action'],
          ),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.contact-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh, horizontal: 10.vw),
        ),
    css('.contact-body')
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
