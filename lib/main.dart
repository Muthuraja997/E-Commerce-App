import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/all_products/all_product.dart';
import 'package:flutter_application_1/screens/base/base.dart';


void main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseApp(),
    );
  }
}

      // home: Scaffold(
      //   appBar: AppBar(
      //     title:const  Text("This my app "),
      //   ),
      //   body: ListView.builder(itemCount: 5,  itemBuilder:((context,index){
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: SizedBox(
      //         child: Container(
      //           height: 100,
      //           color: Colors.green,
      //           child: Text("page $index"),
      //         ),
      //       ),
      //     );
      //   }
      //   )),
      // ),