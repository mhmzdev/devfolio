// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'Hamza',
    /// Uncomment this line to deploy on github pages just in case your websit is like https://mhmzdev.github.io/devfolio-jaspr/
    /// If its on the base repo, then you don't need to do this
    // base: 'devfolio-jaspr/',
    head: <Component>[
      link(
        href:
            'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css',
        rel: 'stylesheet',
      ),
    ],
    charset: 'utf-8',
    viewport: 'width=device-width, initial-scale=1, shrink-to-fit=no',
    meta: {
      "og:title": "Hamza - Random Dude!",
      "og:url": "https://www.mhmz.dev",
    },
    lang: 'en',
    styles: [
      // Special import rule to include to another css file.
      css.import('https://fonts.googleapis.com/css?family=Montserrat'),
      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
      css('html, body')
          .text(
              fontFamily: const FontFamily.list(
                  [FontFamily('Montserrat'), FontFamilies.sansSerif]))
          .box(width: 100.percent, minHeight: 100.vh)
          .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      css('h1').text(fontSize: 4.rem).box(margin: EdgeInsets.unset),
      css.fontFace(
        family: 'Agustina',
        url: 'fonts/agustina/agustina.otf',
      ),
      css('::-webkit-scrollbar').box(width: 8.px, height: 0.px),
      css('::-webkit-scrollbar-track').box(
        radius: BorderRadius.circular(8.px),
      ),
      css('::-webkit-scrollbar-thumb')
          .box(radius: BorderRadius.circular(8.px))
          .background(color: themePrimaryColor),
    ],
    body: App(),
  ));
}
