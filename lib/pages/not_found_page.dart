import 'package:jaspr/jaspr.dart';

@client
class NotFoundPage extends StatelessComponent {

  const NotFoundPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      [
        h1([text('404 - Trang không tồn tại')]),
        p([text('Trang bạn đang tìm không có sẵn.')]),
        a(href: '/', [text('Quay về trang chủ')]),
      ],
    );
  }
}