import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        padding: EdgeInsets.all(10),
        color: Colors.red,
        onPressed: (){
          print('press remove');
        },
        child: Text('Remove'),
      ),
    );
  }
}

