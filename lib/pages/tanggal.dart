
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tanggal extends StatefulWidget {
  @override
  _Tanggal createState() => _Tanggal();
}

class _Tanggal extends State<Tanggal> {
 // String title = 'Date Picker';

  DateTime _date = new DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1947),
        lastDate: DateTime(2030),
        initialDatePickerMode: DatePickerMode.day,
        builder: (BuildContext context, Widget child) {
          return Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
                primaryColor: Colors.white,
                accentColor: Colors.amber,
              ),
              child: child);
        });

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23),
      color: Colors.white,
      child: TextField(
        readOnly: true,
        onTap: (){
          setState(() {
            _selectDate(context);
          });
        },
        decoration: InputDecoration(
          border: InputBorder.none,
         // labelText: 'Pilih Tanggal Awal',
          //labelStyle: TextStyle(fontSize: 13.0, color: Colors.blue,),
          hintText: (new DateFormat.yMd().format(_date)),
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.blue),
         // focusedBorder : OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1.0),
          //borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
