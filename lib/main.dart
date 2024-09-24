import 'package:flutter/material.dart';


void main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const  Text("This my app "),
        ),
        body: ListView.builder(itemCount: 5,  itemBuilder:((context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Container(
                height: 100,
                color: Colors.green,
                child: Text("page $index"),
              ),
            ),
          );
        }
        )),
      ),
    );
  }
}
