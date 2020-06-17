import 'package:flutter/material.dart';

class FilterAwal extends StatefulWidget {
  @override
  _FilterAwalState createState() => _FilterAwalState();
}

class _FilterAwalState extends State<FilterAwal> {
  var _month = [
    'Januari',
    'Febuari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'July',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];
  var _year = ['2018', '2019', '2020'];
  var _currentItemSelected = 'Januari';
  var _currentItemSelected2 = '2018';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1.0),
                  borderRadius: BorderRadius.circular(7.0)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  // isDense: true,
                  items: _month.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    setState(() {
                      this._currentItemSelected = newValueSelected;
                    });
                  },
                  value: _currentItemSelected,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 12.0),
            child: Container(
              padding: EdgeInsets.only(right: 12.0, left: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1.0),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  // isDense: true,
                  hint: Text('Pilih Bulan'),
                  items: _year.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    setState(() {
                      this._currentItemSelected2 = newValueSelected;
                    });
                  },
                  value: _currentItemSelected2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
