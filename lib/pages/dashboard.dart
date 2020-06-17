import 'package:akuntansi2/MainDrawer.dart';
import 'package:akuntansi2/pages/pilihTanggalAkhir.dart';
import 'package:akuntansi2/pages/pilihTanggalAwal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Ringkasan Bisnis",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/filter.png')),
                      ),
                      child: FlatButton(
                        onPressed: (){
                          _showAlertDialog();
                        }, child: null),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                width: double.infinity,
                height: ScreenUtil.getInstance().setHeight(300),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                    ]),
                child: Stack(fit: StackFit.expand, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Text(
                      "PEMASUKAN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, bottom: 35.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, bottom: 35.0, right: 300.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 220.0),
                    child: Text("RP.   0,00",
                        style: TextStyle(color: Colors.white, fontSize: 22.0)),
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                width: double.infinity,
                height: ScreenUtil.getInstance().setHeight(300),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                    ]),
                child: Stack(fit: StackFit.expand, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Text(
                      "PENGELUARAN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, bottom: 35.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, bottom: 35.0, right: 300.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 220.0),
                    child: Text("RP.   0,00",
                        style: TextStyle(color: Colors.white, fontSize: 22.0)),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                width: double.infinity,
                height: ScreenUtil.getInstance().setHeight(300),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.0),
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Stack(fit: StackFit.expand, children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "LABA RUGI",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
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
          content: 
          Column(
            children: <Widget>[
              PilihTanggal(),
              Padding(
                padding: const EdgeInsets.only(right: 100,top: 20.0, bottom: 20.0 ),
                child: Text("sampai dengan", style: TextStyle(color: Colors.black54),),
              ),
              PilihTanggalAkhir(),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
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
