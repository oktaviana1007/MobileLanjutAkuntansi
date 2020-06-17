import 'package:akuntansi2/modal/filter.dart';
import 'package:flutter/material.dart';

class Jurnal extends StatefulWidget {
  @override
  _JurnalState createState() => _JurnalState();
}

class _JurnalState extends State<Jurnal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jurnal"),
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
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Text(
                        "Laporan Rekapitulasi Jurnal",
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
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: FittedBox(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          "Tanggal",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Keterangan",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Debet",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 2),
                        child: Text(
                          "Kredit",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              color: Colors.grey[200],
              height: 3,
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Mei",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 90, top: 5),
                child: Text(
                  "Penjualan Barang",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "26-06-2020",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Kas",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Text(
                        "30.000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )),
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "26-06-2020",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Kas",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "30.000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )),
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 90, top: 5),
                child: Text(
                  "Bayar Jasa",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "26-06-2020",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Kas",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "10.000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )),
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "26-06-2020",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Kas",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Text(
                        "10.000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )),
            Container(
              color: Colors.grey[200],
              height: 3,
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "Total",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: Text(
                        "40000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "40.000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                )),
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
