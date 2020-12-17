import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'application/photo_bloc.dart';
import 'application/todo_bloc.dart';
import 'config/observer.dart';
import 'data/datasources/good_look_mock_repository.dart';
import 'data/datasources/good_look_repository.dart';
import 'domain/routes/routes.gr.dart';
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
            //==============  If you want to smile, uncomment   ==============//
            // goodLookRepository: GoodLookMockRepository(),
          )..add(const EventPhoto()),
        ),
        BlocProvider<TodoBloc>(
          create: (context) => TodoBloc(
            goodLookRepository: GoodLookRepository(),
          )..add(const EventToDo()),
        )
      ],
      child: const AppWidget(),
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
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
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
