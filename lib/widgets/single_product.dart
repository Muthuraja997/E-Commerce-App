import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';

class SingleProduct extends StatefulWidget {
  final Product product;
  const SingleProduct({super.key, required this.product});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    // return 
    // Card(
    //   child:Row(
    //     children: [
    //       Text(widget.product.producttitle),
    //       Text(widget.product.productdescription),
    //       const SizedBox(height: 10),
    //       Row(
    //         children: [
    //           const Text("Rating :"),
    //           const SizedBox(width: 10,),
    //           Text('${widget.product.rating.toString()} *'),
    //           const Divider()
    //         ],
    //       )

    //     ],
    //   )
     
    // );
    return ListTile(
      title:Text(widget.product.producttitle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.product.productdescription),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text("Rating :"),
              const SizedBox(width: 10,),
              Text('${widget.product.rating.toString()} *'),
              const Divider()
            ],
          )
        ],
      ),
      leading: Image.network(widget.product.productimage),

      
    );
  }
}