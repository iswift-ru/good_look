import 'package:flutter/material.dart';

import 'photo_page.dart';
import 'todo_page.dart';

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

  final List<Widget> _screens = [
    PhotoPage(),
    ToDoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      switch (selectedIndex) {
        case 0:
          title = 'Photo';
          break;
        case 1:
          title = 'ToDo';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: bottomNavigatorTab(),
        appBar: selectedIndex == 0
            ? AppBar(
                backgroundColor: const Color(0xff3e6372),
                centerTitle: true,
                title: const Text(
                  'Good Look',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : AppBar(
                leading: const Icon(
                  Icons.fiber_new,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Text(
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
                    child: const Icon(Icons.add),
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
            color: selectedIndex == 0
                ? const Color(0xff3e6372)
                : const Color(0xffA7A7AB),
          ),
        ),
        BottomNavigationBarItem(
          label: 'ToDo',
          icon: Icon(
            Icons.pending_rounded,
            color: selectedIndex == 1
                ? const Color(0xff3e6372)
                : const Color(0xffA7A7AB),
          ),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: const Color(0xff3e6372),
      unselectedItemColor: const Color(0xffA7A7AB),
    );
  }
}
