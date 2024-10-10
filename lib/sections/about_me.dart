import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/constants/theme.dart';
import 'package:devfolio/models/about.dart';
import 'package:devfolio/models/basic.dart';
import 'package:devfolio/utils/assets.dart';
import 'package:jaspr/jaspr.dart';

@client
class AboutMeSection extends StatelessComponent {
  final About about;
  final Basic basic;
  const AboutMeSection({
    super.key,
    required this.about,
    required this.basic,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'about-me-section', [
      span(classes: 'title', id: 'about', [
        text('About Me'),
      ]),
      span(classes: 'subtitle', [
        text('Get to know me :)'),
      ]),
      div(classes: 'about-section-body', [
        div(classes: 'profile-picture', []),
        div(classes: 'about-details', [
          span(
              classes: 'intro-label',
              styles: Styles.text(color: themePrimaryColor),
              [
                text('Who am I?'),
              ]),
          span(classes: 'intro-heading', [
            text(about.heading),
          ]),
          span(
              classes: 'intro-details',
              styles: Styles.text(
                color: Colors.lightGrey,
              ),
              [
                text(about.description),
              ]),
          div(classes: 'divider', []),
          span(
              classes: 'tech-label',
              styles: Styles.text(color: themePrimaryColor),
              [
                text('Technologies I have worked with:'),
              ]),
          div(classes: 'tech-stack', [
            for (final t in about.tech)
              span([
                i(classes: 'fa-solid fa-play play-icon', []),
                span(classes: 'tech-item', [
                  text(t),
                ]),
              ]),
          ]),
          div(classes: 'divider', []),
          div(classes: 'personal-row', [
            div([
              span(classes: 'personal-label', [
                text('Name: '),
              ]),
              span(classes: 'personal-value', [
                text('${basic.firstName} ${basic.lastName}'),
              ]),
            ]),
            div([
              span(classes: 'personal-label', [
                text('Email: '),
              ]),
              span(classes: 'personal-value', [
                text(basic.email),
              ]),
            ])
          ]),
          div(styles: Styles.box(height: 15.px), []),
          div(classes: 'personal-row', [
            div([
              span(classes: 'personal-label', [
                text('Age: '),
              ]),
              span(classes: 'personal-value', [
                text(basic.age.toString()),
              ]),
            ]),
            div([
              span(classes: 'personal-label', [
                text('From: '),
              ]),
              span(classes: 'personal-value', [
                text(basic.address),
              ]),
            ])
          ]),
          div(styles: Styles.box(height: 25.px), []),
          div(classes: 'work-row', [
            AppButton(
              label: 'RESUME',
              href: basic.resume,
            ),
            div(classes: 'divider', styles: Styles.box(width: 80.px), []),
            for (final work in about.works)
              a(classes: 'work-item', href: work.url, target: Target.blank, [
                img(
                  src: work.image,
                  height: work.height,
                ),
              ]),
          ])
        ]),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.about-me-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          // padding: EdgeInsets.only(top: 5.vh),
          width: 100.percent,
        ),
    css('.play-icon').text(color: themePrimaryColor),
    css('.title').text(
      fontFamily: FontFamily('Montserrat'),
      fontWeight: FontWeight.w100,
      fontSize: 40.px,
    ),
    css('.about-section-body')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 100.percent,
        ),
    css('.profile-picture')
        .background(
          image: ImageStyle.url(
            StaticAssets.coloredImage,
          ),
          size: BackgroundSize.cover,
        )
        .box(
          height: 700.px,
          width: 450.px,
          margin: EdgeInsets.only(right: 100.px),
        ),
    css('.about-details')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.start,
          justifyContent: JustifyContent.center,
        )
        .box(
          width: 750.px,
        ),
    css('.intro-label').text(fontSize: 18.px),
    css('.intro-heading')
        .box(
          margin: EdgeInsets.symmetric(vertical: 15.px),
        )
        .text(fontSize: 20.px),
    css('.intro-details').text(
      lineHeight: 3.vh,
      wordSpacing: 1.5.px,
      color: Colors.lightGrey,
    ),
    css('.divider')
        .box(
          height: 1.px,
          width: 100.percent,
          margin: EdgeInsets.symmetric(vertical: 2.vh),
        )
        .background(color: Colors.lightGrey),
    css('.tech-label').text(fontSize: 12.px),
    css('.tech-stack')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
          wrap: FlexWrap.wrap,
        )
        .box(
          margin: EdgeInsets.only(top: 15.px),
        ),
    css('.tech-item')
        .box(margin: EdgeInsets.only(right: 12.px, left: 5.px))
        .text(fontSize: 14.px),
    css('.personal-label').text(
      fontWeight: FontWeight.bold,
      fontSize: 12.px,
    ),
    css('.personal-value').text(
      fontSize: 12.px,
    ),
    css('.personal-row').box(width: 100.percent).flexbox(
          direction: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
        ),
    css('.work-row').box(width: 100.percent).flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.spaceBetween,
        ),

    /// MEDIA QUERIES
    /// For smaller screens
    css.media(MediaQuery.screen(maxWidth: 1350.px), [
      css('.profile-picture').box(
        maxHeight: 100.percent,
        margin: EdgeInsets.symmetric(horizontal: 50.px),
      ),
      css('.about-details').box(width: 45.vw),
    ]),

    css.media(MediaQuery.screen(maxWidth: 1100.px), [
      css('.profile-picture').box(
        maxHeight: 80.percent,
        width: 400.px,
        margin: EdgeInsets.symmetric(horizontal: 30.px),
      ),
      css('.about-details').box(width: 45.vw),
    ]),

    css.media(MediaQuery.screen(maxWidth: 900.px), [
      css('.about-me-section').box(
        padding: EdgeInsets.only(top: 3.vh, right: 0.vw),
      ),
      css('.about-section-body').flexbox(
        direction: FlexDirection.column,
        alignItems: AlignItems.center,
        justifyContent: JustifyContent.start,
      ),
      css('.profile-picture')
          .background(
            image: ImageStyle.url(
              StaticAssets.mobileImage,
            ),
            size: BackgroundSize.cover,
          )
          .box(
            width: 250.px,
            height: 250.px,
          ),
      css('.about-details')
          .box(width: 80.percent, margin: EdgeInsets.only(top: 40.px)),
    ]),
  ];
}
