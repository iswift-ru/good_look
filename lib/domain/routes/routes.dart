import 'package:auto_route/auto_route_annotations.dart';
import 'package:good_look/presentation/pages/main_page.dart';
import 'package:good_look/presentation/pages/photo_page.dart';
import 'package:good_look/presentation/pages/todo_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // initial route is named "/"
  MaterialRoute(page: MainPage, initial: true),
  MaterialRoute(page: ToDoPage),
  MaterialRoute(page: PhotoPage),
])
class $Router {}
