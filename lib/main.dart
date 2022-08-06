import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tugas_listview/itemsiswa.dart';
import 'package:tugas_listview/usermodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            title: Text("Tugas ListView"),
          ),
          body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (_, int index) {
              return itemsiswa(
                  nama: contacts[index].nama,
                  chat: contacts[index].chat,
                  time: contacts[index].time,
                  jumlah: contacts[index].jumlah);
            },
          )),
    );
  }
}
