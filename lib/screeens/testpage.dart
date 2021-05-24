import 'package:flutter/material.dart';

class  TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return TestPageState ();
  }

}
//Bottom Navigation

class TestPageState extends State {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[



    ListTile(
      contentPadding: EdgeInsets.all(40),
      leading: Icon(Icons.assignment_ind_outlined,size: 60, color: Colors.green,),
      title: Text("Kullanıcı Görüntüle:", style: TextStyle(fontSize: 30),),
      subtitle: Text("Mevcut Kullanıcıların Görüntüneceği Ekran ",style: TextStyle(fontSize: 24)),

    ),
    ListTile(
      contentPadding: EdgeInsets.all(40),
      leading: Icon(Icons.delete,size: 60, color: Colors.red,),
      title: Text("Kullanıcı Sil:", style: TextStyle(fontSize: 30),),
      subtitle: Text("Kullanıcı Silme İşlemlerinin Gerçekleştirileceği Ekran" ,style: TextStyle(fontSize: 24),),
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Kullanıcı İşlemleri'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Ekle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Görüntüle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: 'Sil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );



  }
}
