import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:good_look/presentation/bloc/photo_bloc.dart';
import 'package:good_look/presentation/pages/photo_page.dart';
import 'package:good_look/presentation/pages/todo_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  MainPage({
    Key key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageStorageBucket _bucket = PageStorageBucket();

  int selectedIndex = 0;
  String title = 'Photo';

  List<Widget> _screens = [
    PhotoPage(),
    ToDoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      switch (selectedIndex) {
        case 0:
          title = "Photo";
          break;
        case 1:
          title = "ToDo";
          break;
      }
    });
  }

  @override
  void initState() {
    context.read<PhotoBloc>().add(EventPhoto());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: bottomNavigatorTab(),
        appBar: selectedIndex == 0
            ? AppBar(
                backgroundColor: Color(0xff3e6372),
                centerTitle: true,
                title: Text(
                  'Good Look',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : AppBar(
                leading: Icon(
                  Icons.fiber_new,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  'All Tasks',
                  style: TextStyle(color: Colors.black),
                ),
              ),
        body: SafeArea(
          child: PageStorage(
            bucket: _bucket,
            child: _screens.elementAt(selectedIndex),
          ),
        ),
        floatingActionButton: selectedIndex == 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                ],
              )
            : Container());
  }

  Widget bottomNavigatorTab() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'Photo',
          icon: Icon(
            Icons.photo,
            color: selectedIndex == 0 ? Color(0xff3e6372) : Color(0xffA7A7AB),
          ),
        ),
        // title: Container(),

        BottomNavigationBarItem(
          label: 'ToDo',
          icon: Icon(
            Icons.pending_rounded,
            color: selectedIndex == 1 ? Color(0xff3e6372) : Color(0xffA7A7AB),
          ),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Color(0xff3e6372),
      unselectedItemColor: Color(0xffA7A7AB),
    );
  }
}
