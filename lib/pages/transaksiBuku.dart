import 'package:akuntansi2/modal/currency.dart';
import 'package:akuntansi2/pages/tanggal.dart';
import 'package:akuntansi2/pages/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransaksiBuku extends StatefulWidget {
  @override
  _TransaksiBukuState createState() => _TransaksiBukuState();
}

class _TransaksiBukuState extends State<TransaksiBuku> {
  
  var _disimpan = ['Kas', 'Bank', 'Perlengkapan', 'Persediaan', 'Sewa'];
  var _currentItemSelectedSimpan = 'Kas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Transaksi Baru'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add, color: Colors.white,), onPressed: null)
        ],
        leading: IconButton(
          onPressed: () {
            _showAlertDialog();
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 100,
                              child: Tanggal(),
                            ),
                            new Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Input Keterangan',
                                      hintStyle: TextStyle(fontSize: 15.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text("Perkiraan"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Text("Debet"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Text("Kredit"),
                              ),
                            ],
                          )),
                      FittedBox(
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                                items: _disimpan.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this._currentItemSelectedSimpan =
                                        newValueSelected;
                                  });
                                },
                                value: _currentItemSelectedSimpan,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0, left: 10),
                              child: Container(
                                width: 90,
                                child: new Flexible(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: InputDecoration(
                                        hintText: '0',
                                        hintStyle: TextStyle(fontSize: 15.0),
                                        contentPadding: EdgeInsets.only(left: 8)),
                                    inputFormatters: [
                                      WhitelistingTextInputFormatter.digitsOnly,
                                      CurrencyFormat(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 10.0, right: 8),
                              child: Container(
                                width: 90,
                                child: new Flexible(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: InputDecoration(
                                        hintText: '0',
                                        hintStyle: TextStyle(fontSize: 15.0),
                                        contentPadding: EdgeInsets.only(left: 8)),
                                    inputFormatters: [
                                      WhitelistingTextInputFormatter.digitsOnly,
                                      CurrencyFormat(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.close)
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                                items: _disimpan.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this._currentItemSelectedSimpan =
                                        newValueSelected;
                                  });
                                },
                                value: _currentItemSelectedSimpan,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0, left: 10),
                              child: Container(
                                width: 90,
                                child: new Flexible(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: InputDecoration(
                                        hintText: '0',
                                        hintStyle: TextStyle(fontSize: 15.0),
                                        contentPadding: EdgeInsets.only(left: 8)),
                                    inputFormatters: [
                                      WhitelistingTextInputFormatter.digitsOnly,
                                      CurrencyFormat(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16, left: 10.0, right: 8),
                              child: Container(
                                width: 90,
                                child: new Flexible(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 18),
                                    decoration: InputDecoration(
                                        hintText: '0',
                                        hintStyle: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                        contentPadding: EdgeInsets.only(left: 8)),
                                    inputFormatters: [
                                      WhitelistingTextInputFormatter.digitsOnly,
                                      CurrencyFormat(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.close)
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50, top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Total',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: Text('0'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 95.0),
                              child: Text('0'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          child: Container(
                            // width: ScreenUtil.getInstance().setWidth(330),
                             height: ScreenUtil.getInstance().setHeight(90),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(1.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF6078ea).withOpacity(.3),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 8.0)
                                ]),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Transaksi(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Text("SIMPAN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Product-Bold",
                                          fontSize: 18,
                                          letterSpacing: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
        ],
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Batal Membuat Transaksi"),
            content: new Text(
                "Apakah anda yakin untuk membatalkan membuat transaksi?"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transaksi(),
                    ),
                  );
                },
                child: new Text('Ya'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: new Text('Tidak'),
              )
            ],
          );
        });
  }
}
