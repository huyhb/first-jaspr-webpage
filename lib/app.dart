import 'package:first_jaspr_webpage/pages/not_found_page.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      const Header(),
      Router(
        routes: [
          Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
          Route(path: '/about', title: 'About', builder: (context, state) => const About()),
        ],
        errorBuilder: (context, error) => NotFoundPage()
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.main', [
      css('&').styles(
        display: Display.flex,
        height: 100.vh,
        flexDirection: FlexDirection.column,
        flexWrap: FlexWrap.wrap,
      ),
      css('section').styles(
        display: Display.flex,
        flexDirection: FlexDirection.column,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        flex: Flex(grow: 1),
      ),
    ]),
  ];
}
