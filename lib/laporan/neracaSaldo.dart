import 'package:akuntansi2/modal/filter.dart';
import 'package:flutter/material.dart';

class NeracaSaldo extends StatefulWidget {
  @override
  _NeracaSaldoState createState() => _NeracaSaldoState();
}

class _NeracaSaldoState extends State<NeracaSaldo> {
  Widget tableitem(String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Text(
        value,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget coloredbox(Widget child, {bool top = false, bool bottom = false, bool right = false, bool left = false}) =>
      Container(
        decoration: BoxDecoration(
            border: Border(
          right: BorderSide(color: right ? Colors.black: Colors.transparent, width: 2),
          left: BorderSide(color: left ? Colors.black: Colors.transparent, width: 2),
          top: BorderSide(
              color: top ? Colors.black : Colors.transparent, width: 2),
          bottom: BorderSide(
              color: bottom ? Colors.black : Colors.transparent, width: 2),
        )),
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neraca Saldo"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Text(
                        "Laporan Neraca Saldo",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/filter.png')),
                      ),
                      child: FlatButton(
                          onPressed: () {
                            _showAlertDialog();
                          },
                          child: null),
                    ),
                  ],
                ),
              ),
            ),
            Table(
              border: TableBorder(
                  verticalInside: BorderSide(color: Colors.grey[400]),
                  horizontalInside: BorderSide(color: Colors.transparent)),
              children: <TableRow>[
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Text(""),
                      Text(
                        "Mei ",
                        style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.end,
                      ),
                      Text("2020",  style: TextStyle(fontWeight: FontWeight.w500),),
                    ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      coloredbox(Text(
                          "Perkiraan",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ), bottom: true
                      ),
                      coloredbox(tableitem("Debet"), top : true, left: true,bottom: true,),
                      coloredbox(tableitem("Kredit"), top : true, bottom: true, right: true),
                    ]),
                TableRow(children: [
                  coloredbox(Text("Kas"), right: true),
                  Text("30.000", textAlign: TextAlign.end,),
                  Text("0", textAlign: TextAlign.end),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      coloredbox(Text("Perlengkapan"), right: true),
                      Text("0", textAlign: TextAlign.end,),
                      Text("0", textAlign: TextAlign.end),
                    ]),
                TableRow(children: [
                  coloredbox(Text("Pendapatan"), right: true),
                  Text("0", textAlign: TextAlign.end),
                  Text("30.000", textAlign: TextAlign.end),
                ]),
                TableRow(children: [
                  coloredbox(tableitem("Total"), right: true),
                  Text("30.000", textAlign: TextAlign.end),
                  Text("30.000", textAlign: TextAlign.end),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return FittedBox(
            child: AlertDialog(
              title: Text("Filter Tanggal"),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FilterAwal(),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 150, top: 20.0, bottom: 20.0),
                    child: Text(
                      "sampai dengan",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  FilterAwal()
                ],
              ),
              actions: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 115),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.blue,
                    child: Text("FILTER"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
