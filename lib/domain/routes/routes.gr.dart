// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/main_page.dart';
import '../../presentation/pages/photo_page.dart';
import '../../presentation/pages/todo_page.dart';

class Routes {
  static const String mainPage = '/';
  static const String toDoPage = '/to-do-page';
  static const String photoPage = '/photo-page';
  static const all = <String>{
    mainPage,
    toDoPage,
    photoPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.toDoPage, page: ToDoPage),
    RouteDef(Routes.photoPage, page: PhotoPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainPage: (data) {
      final args = data.getArgs<MainPageArguments>(
        orElse: () => MainPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainPage(key: args.key),
        settings: data,
      );
    },
    ToDoPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ToDoPage(),
        settings: data,
      );
    },
    PhotoPage: (data) {
      final args = data.getArgs<PhotoPageArguments>(
        orElse: () => PhotoPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PhotoPage(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MainPage arguments holder class
class MainPageArguments {
  final Key key;
  MainPageArguments({this.key});
}

/// PhotoPage arguments holder class
class PhotoPageArguments {
  final Key key;
  PhotoPageArguments({this.key});
}
