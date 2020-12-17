import 'package:auto_route/auto_route_annotations.dart';
import 'package:good_look/presentation/pages/main_page.dart';
import 'package:good_look/presentation/pages/photo_page.dart';
import 'package:good_look/presentation/pages/todo_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // initial route is named "/"
  MaterialRoute<MainPage>(page: MainPage, initial: true),
  MaterialRoute<ToDoPage>(page: ToDoPage),
  MaterialRoute<PhotoPage>(page: PhotoPage),
])
class $Router {}
