import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800,
                  ) ,
                  child:Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800,
                  ) ,
                  child:Center(
                    child: Icon(
                      Icons.edit,
                      size: 30,
                      color: Colors.white,),
                  ),
                ),
              ]
            ),
            SizedBox(height: 60,),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
               // border: Border.all(color: Colors.white),
              ),
              child:Text("Book Review : The Design of Everyday Things by Don Norman",style: TextStyle(color: Colors.white,fontSize: 35),),
            ),
           SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 Text("The Design of Everyday Things is required reading for anyone who is interested in the user experience. \n \n I personally like to reread it every year or two.Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. ",style:
                 TextStyle(color: Colors.white,
                 fontSize: 23

                 ),),
               ],
             ),
           ),

          ]
        ),
      ),
    );
  }
}
