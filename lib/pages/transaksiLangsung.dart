import 'package:akuntansi2/modal/currency.dart';
import 'package:akuntansi2/pages/tanggal.dart';
import 'package:akuntansi2/pages/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

class TransaksiLangsung extends StatefulWidget {
  @override
  _TransaksiLangsungState createState() => _TransaksiLangsungState();
}

class _TransaksiLangsungState extends State<TransaksiLangsung> {
  var _akun = [
    'Pemasukkan',
    'Pengeluaran',
    'Utang',
    'Bayar Utang',
    'Pitutang',
    'Dibayar Piutang',
    'Tambah Modal',
    'Tarik Modal',
    'Pengalihan Aset',
    'Penyesuaian',
  ];
  var _diterima = [
    'Pendapatan',
    'Penjualan Barang',
    'Ikhtisari Laba/Rugi',
    'Potongan Penjualan',
    'Retur Penjualan'
  ];
  var _disimpan = [
    'Kas',
    'Bank',
    'Perlengkapan',
    'Persediaan Bahan Baku',
    'Persediaan Barang Dagangan',
    'Sewa Dibayar Dimuka'
  ];
  var _currentItemSelectedAkun = 'Pemasukkan';
  var _currentItemSelectedSimpan = 'Kas';
  var _currentItemSelectedTerima = 'Pendapatan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaksi Baru'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              _showAlertDialog();
            },
            icon: Icon(Icons.close)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 30.0, bottom: 8),
              child: Text(
                "INFO TRANSAKSI",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 498,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Jenis Akun",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                items: _akun.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this._currentItemSelectedAkun =
                                        newValueSelected;
                                  });
                                },
                                value: _currentItemSelectedAkun,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Tanggal Transaksi",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Tanggal(),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Diterima Dari",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                items:
                                    _diterima.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this._currentItemSelectedTerima =
                                        newValueSelected;
                                  });
                                },
                                value: _currentItemSelectedTerima,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Disimpan Ke  ",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                items:
                                    _disimpan.map((String dropDownStringItem) {
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Keterangan",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Input Keterangan',
                          hintStyle: TextStyle(fontSize: 15.0)),
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      "Nominal",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                        hintText: "Input Jumlah transaksi",
                        hintStyle: TextStyle(fontSize: 15.0),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20)),
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                      CurrencyFormat(),
                    ],
                  ),
                  Divider(
                    height: 10,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.3),
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(330),
                  height: ScreenUtil.getInstance().setHeight(90),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.0),
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
