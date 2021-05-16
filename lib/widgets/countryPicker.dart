import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';
class MyCountryPicker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Card(
            child:Padding(
              padding: EdgeInsets.all(5),
              child:SizedBox(
                width:double.infinity,
                child:CountryListPick(

                  initialSelection: '+672', //inital selection, +672 for Antarctica
                  onChanged: (CountryCode code) {
                    print(code.name); //get the country name eg: Antarctica
                    print(code.code); //get the country code like AQ for Antarctica
                    print(code.dialCode); //get the country dial code +672 for Antarctica
                    print(code.flagUri); //get the URL of flag. flags/aq.png for Antarctica
                  },
                ),
              ),
            )
        )

    );
  }
}