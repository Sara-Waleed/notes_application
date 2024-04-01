import 'package:flutter/material.dart';

import 'Details_Page.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF252525),
//      body:SingleChildScrollView(
//      scrollDirection: Axis.vertical,
//      child: Column(
//        children: [
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: AppBar_HomePage(),
//          ),
//          ListView.separated(
//            separatorBuilder:
//            (context, index) => Divider(height: 1,),
//            shrinkWrap: true,
//            physics: NeverScrollableScrollPhysics(),
//            itemBuilder: (context, index) {
//              return Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.grey,
//                  ),
//
//                  height: 150,
//                  width: double.infinity,
//                  child: Padding(
//                    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text("Title" ,style: TextStyle(color: Colors.black,fontSize: 20),),
//                        SizedBox(height: 10,),
//                        Text(
//                            maxLines: 2,
//                            overflow: TextOverflow.ellipsis,
//                            "Ui Concepts worth exsisting Ui Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsistingUi Concepts worth exsisting",
//                            style: TextStyle(color: Colors.black,fontSize: 20),),
//
//                      ]
//                    ),
//                  ),
//
//                ),
//              );
//
//            },
//            itemCount:20,
//
//
//          ),
//        ]
//      ),
//    ),
//    floatingActionButton: FloatingActionButton(
//     elevation: 8, // Set the elevation (shadow depth)
//     highlightElevation: 15,
//     backgroundColor: Color(0xFF252525),
//     onPressed: (){},
//     child: Icon(Icons.add),
//   ),
//
//     );
//   }
// }
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: CustomScrollView(

          // Fixed AppBar_HomePage
      slivers: [
      // Sliver app bar
      SliverAppBar(
      backgroundColor: Color(0xFF252525),
      floating: true,
      pinned: true,
      expandedHeight: kToolbarHeight,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 43, color: Colors.white),
        ),
        titlePadding: EdgeInsets.only(left: 16),
        centerTitle: false,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade500,
            ) ,
            child: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 5.0,top: 5,bottom: 5,right: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade500,
            ) ,
            child: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Icon(Icons.info_outline),
            ),
          ),
        ),
      ],
    ),

    // Scrollable list
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(),
                        )
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      height: 150,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Ui Concepts worth existing Ui Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existingUi Concepts worth existing",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8, // Set the elevation (shadow depth)
        highlightElevation: 15,
        backgroundColor: Color(0xFF252525),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class First_Body extends StatelessWidget {
  const First_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
           children: [
                    SizedBox(height: 30,),
                    AppBar_HomePage(),
                    SizedBox(height: 80,),
                    Container(
                   //   color: Colors.redAccent,
                      height: 288,
                      width: 350,
                      child: Image.asset("assets/creating.png"),
                    ),
                    SizedBox(height: 10),
                    Text("Create Your First Note!",style: TextStyle(color: Colors.white,fontSize: 20),),



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
               color: Colors.grey.shade800,
             ),
             height: 50,
             width: 50,

             child: Icon(Icons.search,color: Colors.white,),
           ),
           SizedBox(width: 20,),
           Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.grey.shade800,
             ),
             child: Icon(Icons.info_outline,color: Colors.white,),),
         ]
       )
      ]
    );
  }
}
