// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:first_jaspr_webpage/components/counter.dart' as prefix0;
import 'package:first_jaspr_webpage/components/header.dart' as prefix1;
import 'package:first_jaspr_webpage/pages/about.dart' as prefix2;
import 'package:first_jaspr_webpage/pages/home.dart' as prefix3;
import 'package:first_jaspr_webpage/pages/not_found_page.dart' as prefix4;
import 'package:first_jaspr_webpage/app.dart' as prefix5;

JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix2.About: ClientTarget<prefix2.About>('pages/about'),

    prefix3.Home: ClientTarget<prefix3.Home>('pages/home'),

    prefix4.NotFoundPage: ClientTarget<prefix4.NotFoundPage>(
      'pages/not_found_page',
    ),
  },
  styles: () => [
    ...prefix0.CounterState.styles,
    ...prefix1.Header.styles,
    ...prefix2.About.styles,
    ...prefix5.App.styles,
  ],
);
