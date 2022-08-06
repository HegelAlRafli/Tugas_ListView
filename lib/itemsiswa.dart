import 'package:flutter/material.dart';

class itemsiswa extends StatelessWidget {
  String nama;
  String chat;
  String time;
  String jumlah;

  itemsiswa(
      {Key? key,
      required this.nama,
      required this.chat,
      required this.time,
      required this.jumlah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 75,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey))),
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 26,
            child: Text("PP"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    nama,
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 15, top: 2),
                  child: Text(
                    "Chat : " + chat,
                    style: TextStyle(fontSize: 14),
                  )),
            ],
          ),
          Container(
            width: 80,
            height: 75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 0),
                  child: Text(time),
                ),
                CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 15,
                  child: Text(
                    jumlah,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
