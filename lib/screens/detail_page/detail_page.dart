import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage({super.key,required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final product=widget.product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.producttitle),
        backgroundColor: const Color.fromARGB(255, 243, 27, 185),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                child: SizedBox(
                  width: 500,
                  height: 500,
                  child: Image.network(product.productimage),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                child: Text(product.producttitle,style:const TextStyle(fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250.0),
                child: SizedBox(
                  child:Text("Price : ${product.productprice.toString()}",style:const TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(product.productdescription),
                ),
              ),
            ],
          ),
        ),
      )
      
    );
  }
}