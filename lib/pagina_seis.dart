
import 'package:flutter/material.dart';

//! BottomNavigationBar

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 6 Diego'),
        backgroundColor: Colors.deepPurple, // Puedes personalizar el color
        centerTitle: true,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize
            .min, // Asegura que la columna no ocupe todo el espacio vertical
        children: [
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Menu',
                icon: Icon(Icons.menu),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
