import 'package:flutter/material.dart';
import 'package:giftproject/ui/button/remove_button.dart';

class CartViewScreen extends StatefulWidget {
  @override
  _CartViewScreenState createState() => _CartViewScreenState();
}

class _CartViewScreenState extends State<CartViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          color: Colors.red,
          onPressed: (){
            print('press back arrow');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Cart View",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,

      ),
      body: Container(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 9,
                itemBuilder: (context,int index)=>
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //image and remove button Container
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 100,
                                  margin: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      image: DecorationImage(
                                          image: NetworkImage("https://images.unsplash.com/photo-1558202767-52e5169014ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                               RemoveButton(),
                              ],
                            ),
                          ),
                          //Name , Brand Name, Price Container ,Quantity add and minus
                          Container(
                          // padding: EdgeInsets.only(bottom: 60),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                 children: [
                                   TextSpan(text: 'Myanmar Larger Beer 300'),
                                   TextSpan(text: 'ml',)
                                 ]
                                ),
                              ),
                              Text("Myanmar Larger Beer 330ML"),
                              Text("Brand Name"),
                              Text("Ks 6700"),
                              //Quantity add and minus
//                             Container(
//                                margin: EdgeInsets.only(bottom: 16),
//                                decoration: BoxDecoration(
//                                  color: Colors.white,
//                                  borderRadius: BorderRadius.circular(5),
//                                ),
//                                child: Row(
//                                  children: <Widget>[
//                                    Icon(Icons.remove_circle_outline),
//                                    Container(
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.circular(20),
//                                      ),
//                                      child: Center(child: Text("Qty 1"),),
//                                    ),
//                                    Icon(Icons.add_circle_outline),
//                                  ],
//                                ),
//                              ) ,
                            Container(
                              //Quantity add and minus
                              height: 100,
                              padding: EdgeInsets.only(left: 100,top: 80),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.remove_circle_outline),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(child: Text("Qty 1"),),
                                  ),
                                  Icon(Icons.add_circle_outline),
                                ],
                              ),
                            ),
                            ],
                          ),
                        ),

                      ],)),
            ),
        ),
    );
  }
}


