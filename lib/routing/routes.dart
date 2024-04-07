import 'package:get/get.dart';
import 'package:recipes/pages/home/home_page.dart';

abstract class Routes {
  static const String home = '/';

  static final List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
  ];
}
