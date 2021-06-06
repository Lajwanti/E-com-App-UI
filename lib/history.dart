import 'dart:collection';

import 'package:flutter/material.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  Widget custom_padding(){
    return  Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color: Colors.black,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText:"UserName",
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 17),
                ),
              ),
            );
  }



Widget custom_card(var img ,String txt1,String txt2){
  return  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
               child:  Row(
              children: <Widget>[
              CircleAvatar(
                 radius: 27,
                backgroundColor: Colors.teal,
                 child: CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: 25,
                 ),
              ),
                 Center(
                   child: Column(
                  
                    children: <Widget>[
                       Container(
                        padding: EdgeInsets.only(left: 10),
                       child:Text(txt1,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: <Widget>[
                             Icon(Icons.star,color: Colors.yellow,size: 20,),
                             Container(
                             padding: EdgeInsets.only(left:4),
                              child:Text(txt2,style: TextStyle(fontSize: 12,),)
                               ),
                              Text("     \$10"),
                           ],
                         ),
                         
                       ),
                    
                    
                    ]  
                  ),
                 ),
               ],),
                ),
  );

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
          child:  SingleChildScrollView(
                  child: Column(children: <Widget>[
                 custom_padding(),
                  Column(children: <Widget>[
                    custom_card("images/iphone.jpg","iPhone 12 pro","5.0 (23 Reviews)"),
                    custom_card("images/note20ultra.jpg","Note 20 ultra","5.0 (23 Reviews)"),
                    custom_card("images/macbook.jpg","Mackbook Air","5.0 (23 Reviews)"),
                    custom_card("images/macbookpro.jpg","Mackbook Pro","5.0 (23 Reviews)"),
                    custom_card("images/gamingpc.jpg","Gaming pc","5.0 (23 Reviews)"),
                    custom_card("images/backlit_keyboard.jpg","Backlit Kayboad","5.0 (23 Reviews)"),
                    custom_card("images/mercedes.jpg","Mercedes","5.0 (23 Reviews)"),
                    custom_card("images/mutton.jpg","Mutton","5.0 (23 Reviews)"),
                    custom_card("images/roaddteer.jpg","Roadtesr","5.0 (23 Reviews)"),
                    custom_card("images/royal_field.jpg","Royal Field","5.0 (23 Reviews)"),
                   

                   ],),
                 
            ],),
          )
        ),

      
    );
  }
}