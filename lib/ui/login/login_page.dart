import 'package:flutter/material.dart';
import 'package:giftproject/ui/field/custom_input_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Container(
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'GiftoGraph',
                        style: TextStyle(
                            fontFamily: 'Bellota',
                            fontSize: 35,
                            fontWeight: FontWeight.w300,
                            color: Colors.blue.shade900),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputFields(
                      Icon(
                        Icons.person,
                        color: Colors.blue.shade900,
                      ),
                      'UserName'),
                  CustomInputFields(
                      Icon(
                        Icons.lock,
                        color: Colors.blue.shade900,
                      ),
                      'Password'),
                  Container(
                    width: 250,
                    child: RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 65.0),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.lock_open,
                              size: 15,
                              color: Colors.blue.shade900,
                            ),
                          ),
                          Text(
                            'Log In',
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 15.0),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {},
                      color: Colors.orange.shade900,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.add_comment,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Sign up with Google',
                            style: TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {},
                      color: Colors.blue.shade800,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.face,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Sign up with Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}