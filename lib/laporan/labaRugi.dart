import 'package:akuntansi2/modal/filter.dart';
import 'package:flutter/material.dart';

class LabaRugi extends StatefulWidget {
  @override
  _LabaRugiState createState() => _LabaRugiState();
}

class _LabaRugiState extends State<LabaRugi> {
  Widget tableitem(String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Text(
        value,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget coloredbox(Widget child,
          {bool top = false,
          bool bottom = false,
          bool right = false,
          bool left = false}) =>
      Container(
        decoration: BoxDecoration(
            border: Border(
          right: BorderSide(
              color: right ? Colors.black : Colors.transparent, width: 2),
          left: BorderSide(
              color: left ? Colors.black : Colors.transparent, width: 2),
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
        title: Text("Laba Rugi"),
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
                        "Laporan Laba Rugi",
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
                  verticalInside: BorderSide(color: Colors.black, width: 2),
                  horizontalInside: BorderSide(color: Colors.transparent)),
              children: <TableRow>[
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Text(""),
                      Text(
                        "Mei 2020",
                        style: TextStyle(fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Text(
                        "Pendapatan",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      coloredbox(tableitem(""), top: true),
                    ]),
                TableRow(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                    child: Text("Pendapatan"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                    child: Text(
                      "30.000",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Pendapatan Bersih",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, top: 5, bottom: 5),
                        child: Text(
                          "500.000",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                TableRow(children: [
                  Text(""),
                  Text(""),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Harga Pokok Penjualan",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(""),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Laba/Rugi Kotor".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 5, bottom: 5),
                    child: Text("500.000", textAlign: TextAlign.end),
                  ),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(""),
                      ),
                      Text(""),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Biaya Penjualan",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 5, bottom: 5),
                    child: Text(""),
                  ),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Total Biaya Penjualan",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, top: 5, bottom: 5),
                        child: Text(
                          "(0)",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(""),
                  ),
                  Text(""),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Biaya Admin dan Umum",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, top: 5, bottom: 5),
                        child: Text(""),
                      ),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Total Admin dan Umum",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 5, bottom: 5),
                    child: Text(
                      "(0)",
                      textAlign: TextAlign.end,
                    ),
                  ),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(""),
                      ),
                      Text(""),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Biaya Diluar Usaha ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 5, bottom: 5),
                    child: Text(""),
                  ),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Total Biaya Diluar Usaha",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, top: 5, bottom: 5),
                        child: Text(
                          "(0)",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(""),
                  ),
                  Text(""),
                ]),
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      coloredbox(
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              "laba/rugi bersih".toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          bottom: true),
                      coloredbox(
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15.0, top: 5, bottom: 5),
                            child: Text(
                              "500.000",
                              textAlign: TextAlign.end,
                              style: TextStyle(fontWeight: FontWeight.w500)
                            ),
                          ),
                          bottom: true),
                    ]),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "total rugi/laba bersih".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 82.0),
                  child: Text("500.000",style: TextStyle(fontWeight: FontWeight.w500)),
                ),
              ],
            ),
             Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Rata-rata rugi/laba bersih".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 51.0),
                  child: Text("500.000",style: TextStyle(fontWeight: FontWeight.w500)),
                ),
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
