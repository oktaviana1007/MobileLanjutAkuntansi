
import 'package:akuntansi2/mainDrawer.dart';
import 'package:flutter/material.dart';

class Pengaturan extends StatefulWidget {
  @override
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Container(
        //color:Colors.blue,
        child: ListView(
          children: <Widget>[
            CustomListTile(
                  'Pengaturan Perusahaan',
                  'Ubah nama dan detail perusahaan',
                  () {
                  }
            ),
            CustomListTile(
                  "Pengaturan Modal Awal",
                  'Atur modal awal perusahaan',
                  () {
                  }
            ),
            CustomListTile(
                  "Pengaturan Kode Rekening",
                  'Daftar kode rekening perusahaan',
                  () {
                  }
            ),
            // CustomListTile(
            //       "Periode",
            //       'Melihat Laporan Berdasarkan Periode',
            //       () {Navigator.push(
            //           context,
            //           MaterialPageRoute (builder: (context) => Jurnal()),
            //         );
            //       }
            // ),
            //  CustomListTile(
            //       "Utang",
            //       'Laporan Data Utang',
            //       () {Navigator.push(
            //           context,
            //           MaterialPageRoute (builder: (context) => Jurnal()),
            //         );
            //       }
            // ),
            //  CustomListTile(
            //       "Piutang",
            //       'Laporan Data Piutang',
            //       () {Navigator.push(
            //           context,
            //           MaterialPageRoute (builder: (context) => Jurnal()),
            //         );
            //       }
            // ),
          ],
        ),
      ),
    );
  }
}



class CustomListTile extends StatelessWidget{

  String sub;
  String text;
  Function onTap;

  CustomListTile (this.sub,this.text,this.onTap);


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left : 20.0, right: 10.0, top: 10.0),
      child: Container(
        child: InkWell(
          splashColor: Colors.black,
          onTap: onTap,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1.0),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(sub, style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black
                      ),),
                      Text(text, style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
