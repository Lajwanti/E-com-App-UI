import 'package:e_comm_app_ui/history.dart';
import 'package:e_comm_app_ui/mobile_laptop.dart';
import 'package:flutter/material.dart';
import 'userlogin.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

Widget custom_card(var img ,var size,var click){
  return GestureDetector(
    child: Container(
     child: Card(
        child: Image.asset(img,
          fit: BoxFit.fitWidth,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width :5
          ),
          borderRadius: BorderRadius.circular(size),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
  ),
    ),
    onTap: () {
    
     Navigator.push(context,MaterialPageRoute(builder: (context) =>click));                
  }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff224952),
        leading: Icon(Icons.menu),
        title:Text("Ecom App"),
          elevation: 50, ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xff224952),
            child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  custom_card("images/userlogin.jpg",10.0,userlogin()),
                  custom_card("images/mobile&laptop.jpg",10.0,mobile_laptop()),
                  custom_card("images/customer_reviews.jpg",10.0,history())
                ],
               ),
            ),
      
         ),
    );
  }
}

