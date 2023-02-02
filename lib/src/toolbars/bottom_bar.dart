import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _selectOptionPage = 0;
  static final List<Widget> _pageOptions = <Widget>[
    const Text("a"),
    const Text("b"),
    const Text("c")
  ];
  void _SelectOptionPage(int value) {
    setState(() {
      _selectOptionPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 143, 255),
          title: const Center(
            child: Text("Home Page"),
          )),
      body: Center(
        child: _pageOptions[_selectOptionPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Schedule")
        ],
        elevation: 14,
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(255, 7, 143, 255),
        showSelectedLabels: false,
        onTap: _SelectOptionPage,
        currentIndex: _selectOptionPage,
      ),
    );
  }
}
