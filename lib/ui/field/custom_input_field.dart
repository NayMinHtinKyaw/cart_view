import 'package:flutter/material.dart';

class CustomInputFields extends StatelessWidget {
  Icon myIcon;
  String myText;

  CustomInputFields(this.myIcon, this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: Material(
            elevation: 10.0,
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myIcon,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  width: 200,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: myText,
                          fillColor: Colors.white,
                          filled: true),
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            )));
  }
}