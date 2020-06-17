import 'package:akuntansi2/pages/Transaksi.dart';
import 'package:akuntansi2/pages/dashboard.dart';
import 'package:akuntansi2/pages/kalkulator.dart';
import 'package:akuntansi2/pages/laporan.dart';
import 'package:akuntansi2/pages/pengaturan.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  child: new Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)), 
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/logo.png',width: 70,height: 70),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('PT AYE AYE', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                      ),
                    ]
                  )
                )),
                Divider(
                  height: 10,
                  thickness: 0.5,
                  color: Colors.black.withOpacity(0.3),
                  indent: 0,
                  endIndent: 0,
                ),
              CustomListTile(
                Icons.dashboard,
                'Dashboard',
                () {Navigator.push(
                    context,
                    MaterialPageRoute (builder: (context) => Dashboard1()),
                  );
                }
              ),
              CustomListTile(
                FontAwesomeIcons.handHoldingUsd,
                'Transaksi',
                () {Navigator.push(
                    context,
                    MaterialPageRoute (builder: (context) => Transaksi()),
                  );
                }
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.3),
                indent: 0,
                endIndent: 0,
              ),
             
              CustomListTile(
              FontAwesomeIcons.fileInvoiceDollar,'Laporan',() {
                Navigator.push(
                    context,
                    MaterialPageRoute (builder: (context) => Laporan()),
                  );
                }
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black.withOpacity(0.3),
                indent: 0,
                endIndent: 0,
              ),
              CustomListTile(Icons.settings,'Pengaturan', () {Navigator.push(
                    context,
                    MaterialPageRoute (builder: (context) => Pengaturan()),
                  );
                },
              ),
              CustomListTile(FontAwesomeIcons.calculator,'Kalkulator',(){
                    Navigator.push(
                    context,
                    MaterialPageRoute (builder: (context) => SimpleCalculator()),
                  );}),

            ]
          ),
      )
    );
  }
}
class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTile (this.icon,this.text,this.onTap);


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        
        child: InkWell(
          splashColor: Colors.black,
          onTap: onTap,
          child: Container(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 25.0, top: 0.0),
                      child: Icon(icon, color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: 
                        Text(text, style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),)
                    ),
                  ],
                ),
               
              //  Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
