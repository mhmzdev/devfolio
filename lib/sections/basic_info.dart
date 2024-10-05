import 'package:devfolio/constants/theme.dart';
import 'package:devfolio/models/basic.dart';
import 'package:devfolio/models/social.dart';
import 'package:devfolio/utils/assets.dart';
import 'package:jaspr/jaspr.dart';

class BasicInfoSection extends StatelessComponent {
  final Basic basic;
  final List<Social> socials;
  const BasicInfoSection({
    super.key,
    required this.basic,
    required this.socials,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'info-section', [
      div(classes: 'info', [
        div(classes: 'welcome', [
          span(classes: 'welcome-text', [
            text('WELCOME TO MY PORTFOLIO'),
          ]),
          img(
            classes: 'wave',
            src: StaticAssets.waveGif,
            height: 35,
          )
        ]),
        h1(classes: 'first-name', [text(basic.firstName)]),
        h1(classes: 'last-name', [text(basic.lastName)]),
        span(classes: 'subtitle', [
          i(classes: 'fa-solid fa-play play-icon', []),
          span(classes: 'dynamic-subtitles', [
            text('Flutter Enthusiast'),
          ])
        ]),
        div(classes: 'socials', [
          for (final social in socials)
            a(
              classes: 'social-icon',
              href: social.url,
              target: Target.blank,
              [i(classes: social.icon, [])],
            ),
        ]),
      ]),
      div(classes: 'main-image', []),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.info-section')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.spaceBetween,
        )
        .box(
            padding: EdgeInsets.only(
          left: 10.vw,
        )),
    css('.welcome').box(margin: EdgeInsets.only(bottom: 2.5.vh)).flexbox(
          alignItems: AlignItems.end,
        ),
    css('.welcome-text')
        .box(
          padding: EdgeInsets.only(right: 12.px, bottom: 2.px),
        )
        .text(
          fontFamily: FontFamily('Montserrat'),
          fontSize: 20.px,
        ),
    css('.first-name').box(padding: EdgeInsets.only(top: 3.vh)).text(
          fontFamily: FontFamily('Montserrat'),
          fontWeight: FontWeight.w100,
          lineHeight: 3.vh,
        ),
    css.fontFace(
      family: 'PoppinsBold',
      url: '/fonts/poppins/Poppins-Bold.ttf',
    ),
    css('.last-name').text(
      fontFamily: FontFamily('PoppinsBold'),
      fontWeight: FontWeight.bolder,
    ),
    css('.main-image').box(height: 85.vh, width: 75.vh).background(
          image: ImageStyle.url(StaticAssets.bwImage),
          size: BackgroundSize.cover,
        ),
    css('.play-icon').text(color: themePrimaryColor),
    css('.subtitle')
        .flexbox(direction: FlexDirection.row, alignItems: AlignItems.center),
    css('.dynamic-subtitles')
        .box(margin: EdgeInsets.only(left: 15.px))
        .text(fontSize: 18.px),
    css('.socials')
        .box(
          padding: EdgeInsets.only(top: 2.vh),
        )
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
        ),
    css('.social-icon')
        .text(
          fontSize: 25.px,
          color: Colors.white,
        )
        .box(
          padding: EdgeInsets.only(right: 25.px),
        ),
    css('.social-icon:hover')
        .text(
          color: themePrimaryColor,
        )
        .box(
          transition: Transition('color', duration: 300),
        ),

    /// MEDIA QUERY 1100px
    css.media(MediaQuery.screen(maxWidth: 1100.px), [
      css('.welcome-text').text(fontSize: 15.px),
      css('.first-name').text(fontSize: 50.px),
      css('.last-name').text(fontSize: 50.px),
      css('.dynamic-subtitles').text(fontSize: 14.px),
      css('.main-image').box(height: 65.vh, width: 55.vh),
      css('.play-icon').box(height: 15.px),
    ]),

    /// MEDIA QUERY 786px
    css.media(MediaQuery.screen(maxWidth: 786.px), [
      css('.info-section').flexbox(direction: FlexDirection.column),
      css('.main-image').box(height: 55.vh, width: 45.vh).flexItem(
            alignSelf: AlignSelf.end,
          ),
      css('.info').flexItem(
        alignSelf: AlignSelf.start,
      ),
    ]),
  ];
}
