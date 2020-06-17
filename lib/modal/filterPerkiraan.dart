import 'package:flutter/material.dart';

class FilterPerkiraan extends StatefulWidget {
  @override
  _FilterPerkiraanState createState() => _FilterPerkiraanState();
}

class _FilterPerkiraanState extends State<FilterPerkiraan> {

  var _perkiraan = [
    'Kas',
    'Bank',
    'Perlengkapan',
    'Persediaan',
    'Piutang Usaha',
    'DP Sewa',
    'Aktiva Tetap',
    'Akumulasi Penyusutan',
    'Utang Usaha',
    'Utang Bank',
    'Modal',
    'Prive'
  ];
  var _currentItemSelected = 'Kas';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                      isExpanded: true,
                      items: _perkiraan.map((String dropDownStringItem) {
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
        ],
      ),
    );
  }
}