import 'package:flutter/material.dart';
import 'package:tugas_listview/itemsiswa.dart';
import 'package:tugas_listview/usermodel.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.chat)),
    Tab(text: "STATUS"),
    Tab(icon: Icon(Icons.call)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  List<UserModel> contacts = [
    UserModel(1, 'Hegel', 'project saya ini ', '00.12', '4'),
    UserModel(2, 'Alwan', 'gmn kak', '12.12', '2'),
    UserModel(3, 'Akbar', 'hmm', '05.12', '4'),
    UserModel(4, 'Danar', 'ya gtula', '08.12', '1'),
    UserModel(5, 'Mika', 'kata mamah sih', '09.12', '2'),
    UserModel(6, 'Anta', 'cari aja di yt', '10.12', '4'),
    UserModel(7, 'Firdaus', '50k', '04.12', '6'),
    UserModel(8, 'Ilyas', 'masuk gk', '02.12', '3'),
    UserModel(9, 'Andika', 'gmn project', '11.12', '1'),
    UserModel(10, 'Hiba', 'itu masukin di file', '09.12', '5'),
    UserModel(11, 'Nabil', 'pe dece', '08.12', '2'),
    UserModel(12, 'Amri', 'p badminton', '15.12', '2'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) {},
            controller: _controller,
            tabs: list,
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(controller: _controller, children: [
          Builder(builder: (context) {
            return ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (_, int index) {
                return GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Hapus Kontak"),
                                content:
                                    Text("Anda yakin ingin menghapus kontak ?"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Ya"),
                                    onPressed: () {
                                      setState(() {
                                        contacts.removeAt(index);
                                      });
                                      Navigator.pop(context);
                                    },
                                  ),
                                  FlatButton(
                                    child: Text("Tidak"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ));
                    },
                    child: itemsiswa(
                        nama: contacts[index].nama,
                        chat: contacts[index].chat,
                        time: contacts[index].time,
                        jumlah: contacts[index].jumlah));
              },
            );
          }),
          Center(
            child: Center(
              child: Text(
                "Halaman Status",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
              child: Center(
                  child: Text(
            "Halaman Telepon",
            style: TextStyle(fontSize: 20),
          ))),
        ]),
      ),
    );
  }
}
