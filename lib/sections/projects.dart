import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/components/project_card.dart';
import 'package:devfolio/utils/assets.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSections extends StatelessComponent {
  const ProjectsSections({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final List<Map<String, dynamic>> projects = [
      {
        'banner': StaticAssets.snackbar,
        'icon': StaticAssets.flutter,
        'title': 'Awesome Snackbar',
        'description':
            "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
        'link': 'https://pub.dev/packages/awesome_snackbar',
      },
      {
        'banner': StaticAssets.quranB,
        'icon': StaticAssets.quran,
        'title': 'Quran App',
        'description':
            "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
        'link': 'https://github.com/mhmzdev/the-holy-quran-app',
      },
      {
        'banner': StaticAssets.medkitB,
        'icon': StaticAssets.medkit,
        'title': 'MedKit',
        'description':
            "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
        'link': "https://github.com/mhmzdev/MedKit-Pharmacy-App-Using-Flutter",
      },
      {
        'banner': StaticAssets.hereiamB,
        'icon': StaticAssets.hereiam,
        'title': 'Here I Am',
        'description':
            "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
        'link': "https://github.com/mhmzdev/Here-I-Am-Alert-App",
      },
      {
        'banner': StaticAssets.covidB,
        'icon': StaticAssets.covid,
        'title': 'Covid-19 Tracker',
        'description':
            "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
        'link': "https://github.com/mhmzdev/Covid19-Tracker-App",
      },
    ];

    yield section(classes: 'projects-section', [
      span(classes: 'title', [
        text('Portfolio'),
      ]),
      span(classes: 'subtitle', [
        text("Here are few samples of my work :)"),
      ]),
      div(classes: 'section-body-projects', id: 'projects', [
        for (final project in projects)
          ProjectCard(
            banner: project['banner'],
            icon: project['icon'],
            title: project['title'],
            description: project['description'],
            url: project['link'],
          ),
      ]),
      div(styles: Styles.box(height: 45.px), []),
      AppButton(
        label: 'See more',
        onPressed: () {},
      ),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.projects-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh, horizontal: 10.vw),
        ),
    css('.section-body-projects')
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
