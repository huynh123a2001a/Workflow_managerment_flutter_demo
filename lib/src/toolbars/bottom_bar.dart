import 'package:flutter/material.dart';
import 'package:workflow_managerment/src/screen/home_page.dart';
import 'package:workflow_managerment/src/screen/schedule_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _selectOptionPage = 0;
  static final List<Widget> _pageOptions = <Widget>[
    const HomePage(),
    const SchedulePage(),
    const Text("c")
  ];
  // ignore: non_constant_identifier_names
  void _SelectOptionPage(int value) {
    setState(() {
      _selectOptionPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 26, 0, 142),
          title: const Center(
            child: Text("Home Page"),
          )),
      body: Container(
        child: _pageOptions[_selectOptionPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Team")
        ],
        elevation: 14,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 238, 226, 0),
        backgroundColor: const Color.fromARGB(255, 26, 0, 142),
        showSelectedLabels: false,
        onTap: _SelectOptionPage,
        currentIndex: _selectOptionPage,
      ),
    );
  }
}
