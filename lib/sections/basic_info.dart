import 'package:devfolio/utils/assets.dart';
import 'package:jaspr/jaspr.dart';

class BasicInfoSection extends StatefulComponent {
  const BasicInfoSection({super.key});

  @override
  State createState() => BasicInfoSectionState();
}

class BasicInfoSectionState extends State<BasicInfoSection> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'info-section', [
      div([
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
        h1(classes: 'first-name', [text('Muhammad')]),
        h1(classes: 'last-name', [text('Hamza')]),
        span(classes: 'subtitle', [
          img(src: StaticAssets.playIcon, height: 20),
          span(classes: 'dynamic-subtitles', [
            text('Flutter Enthusiast'),
          ])
        ]),
        div(classes: 'socials', []),
      ]),
      div(
        classes: 'main-image',
        [img(src: StaticAssets.bwImage)],
      ),
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
          justifyContent: JustifyContent.spaceBetween,
        ),
  ];
}
