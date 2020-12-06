import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_look/data/datasources/good_look_repository.dart';
import 'package:good_look/domain/routes/routes.gr.dart';
import 'package:good_look/presentation/bloc/photo_bloc.dart';
import 'package:good_look/presentation/bloc/todo_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/pages/main_page.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhotoBloc>(
          create: (context) => PhotoBloc(
            goodLookRepository: GoodLookRepository(),
            // animalRepository: AnimalServerRepository()),
          )..add(const EventPhoto()),
        ),
        BlocProvider<TodoBloc>(
          create: (context) => TodoBloc(
            goodLookRepository: GoodLookRepository(),
            // animalRepository: AnimalServerRepository()),
          )..add(const EventToDo()),
        )
      ],
      child: AppWidget(),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.blue,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // // localizationsDelegates: [
      // //   GlobalMaterialLocalizations.delegate,
      // //   GlobalWidgetsLocalizations.delegate,
      // // ],
      // supportedLocales: [
      //   const Locale('ru', 'RU'),
      // ],
      debugShowCheckedModeBanner: false,

      // pass anything navigation related to ExtendedNav instead of MaterialApp

      // routes: {
      //   '/mainpage': (BuildContext context) => MainPage(),
      //   '/detailpoint': (BuildContext context) => DetailPoint(),
      // },
      onGenerateRoute: Router(),
      builder: ExtendedNavigator.builder(
          router: Router(),
          builder: (BuildContext context, extendedNav) {
            final data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaleFactor: 1.0),
              child: extendedNav,
            );
          }),

      home: MainPage(),
    );
  }
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(cubit, error, stackTrace);
  }
}
