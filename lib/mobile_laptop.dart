import 'package:flutter/material.dart';

class mobile_laptop extends StatefulWidget {
  @override
  _mobile_laptopState createState() => _mobile_laptopState();
}

class _mobile_laptopState extends State<mobile_laptop> {

Widget custom_card(var img ,String txt1,String txt2,String txt3,String txt4){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
               child:  Row(
              children: <Widget>[
                 Container(
                    height : 150,
                    width :150,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     
                       image: new DecorationImage(
                       image: ExactAssetImage(img),
                       fit: BoxFit.fill,
                     ),
                    ),
                  ),
                  
                 Center(
                   child: Column(
                  
                    children: <Widget>[
                       Container(
                        padding: EdgeInsets.only(bottom: 40,left: 10),
                       child:Text(txt1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: <Widget>[
                             Icon(Icons.star,color: Colors.yellow,size: 20,),
                             Container(
                             padding: EdgeInsets.only(left:4),
                              child:Text(txt2,style: TextStyle(fontSize: 15,),)
                               ),
                           ],
                         ),
                       ),
                       Container(
                         padding: EdgeInsets.only(right:23),
                       child:Text(txt3,style: TextStyle(fontSize: 15),)
                       ),
                        Container(
                         padding: EdgeInsets.only(right:45),
                       child:Text(txt4,style: TextStyle(fontSize: 15),)
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
          child:SingleChildScrollView(
             child: Column(
              children : [
                custom_card("images/iphone.jpg","iPhone 12 pro","5.0 (23 Reviews)","20 pieces  \$90","Quantity: 1"),
                custom_card("images/note20ultra.jpg","Note 20 ultra","5.0 (23 Reviews)","20 pieces  \$90","Quantity: 1"),
                custom_card("images/macbook.jpg","Mackbook Air","5.0 (23 Reviews)","20 pieces  \$90","Quantity: 1"),
                custom_card("images/macbookpro.jpg","Mackbook Pro","5.0 (23 Reviews)","20 pieces  \$90","Quantity: 1"),
                custom_card("images/gamingpc.jpg","Gaming pc","5.0 (23 Reviews)","20 pieces  \$90","Quantity: 1"),
               
              ]
            ),
          )
        ),

    );
  }
}