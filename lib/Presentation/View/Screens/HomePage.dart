import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
   body:   Column(
        children: [
          SizedBox(height: 30,),
          AppBar_HomePage(),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 height: 288,
                 width: 350,
                 child: Image.asset("assets/creating.png"),
               ),
               Text("Create Your First Note!",style: TextStyle(color: Colors.white,fontSize: 25),),

             ],
           ),

        ],),


    );
  }
}

class AppBar_HomePage extends StatelessWidget {
  const AppBar_HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 59,
          width: 115,
          child: Text("Notes",style: TextStyle(fontSize: 43,color: Colors.white)),
        ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.grey,
             ),
             height: 50,
             width: 50,

             child: Icon(Icons.search),
           ),
           SizedBox(width: 20,),
           Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.grey,
             ),
             child: Icon(Icons.info_outline),),
         ]
       )
      ]
    );
  }
}
