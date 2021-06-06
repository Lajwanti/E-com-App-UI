
import 'package:flutter/material.dart';

class userlogin extends StatefulWidget {
  @override
  _userloginState createState() => _userloginState();
}

class _userloginState extends State<userlogin> {
 Widget custom_container(var txt){
   return  Align(
     alignment: Alignment.topLeft,
     child: Container(
        padding: EdgeInsets.only(left: 15,top: 14),
       child:Text(txt,style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black87,)
        ),
    ) );
 }
 Widget custom_container2(var txt){
   return  Align(
     alignment: Alignment.topLeft,
     child: Container(
         padding: EdgeInsets.only(left: 15),
         child:Text(txt,style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, color: Colors.grey,)
       ),
     ) );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications,color: Colors.black,),
          )
        ],
        leading:  Icon(Icons.arrow_back,color: Colors.black),
        backgroundColor : Colors.white60,
        elevation:30,
        title : Center(child: Text("Ecom App",style: TextStyle(color:Colors.black),)),
        ),

        body: Container(
          width: double.infinity,
          child:Column(children : [
            Row(
            children: <Widget>[
               Container(
                  height : 250,
                  width :220,
                  child: Image.asset("images/login.png",fit: BoxFit.fill,),
                ),
                
               Center(
                 child: Column(
                  children: <Widget>[
                     Container(
                      padding: EdgeInsets.only(bottom: 10,right: 45),
                     child:Text("User",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                     ),
                     Container(
                      child:Text("abc@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                       ),
                      SizedBox(height: 10),
                     Container(
                       padding: EdgeInsets.only(top: 20,right: 55),
                     child:Text("logout",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                     ),
                  ]  
                ),
               ),
         ],),
          custom_container("ACCOUNT INFORMATION" ),
          custom_container("Full Name"),
          custom_container2("User"),
          custom_container("Email"),
          custom_container2("user@gmail.com"),
          custom_container("Phone"),
          custom_container2("+923375900098"),
          custom_container("Address"),
          custom_container2("Saddar Hyderabad"),
          custom_container("Gender"),
          custom_container2("Female"),
          custom_container("Date Of Birth"),
          custom_container2("August, 01,1998"),

          ])
        ),

    );
  }
}