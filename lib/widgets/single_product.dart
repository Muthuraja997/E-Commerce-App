import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';

class SingleProduct extends StatefulWidget {
  final Product product;
  
  final void Function()? onTap;
  const SingleProduct({super.key, required this.product,required this.onTap});

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: ListTile(
        onTap: widget.onTap,
        shape:BeveledRectangleBorder(
          side: 
          const BorderSide(color: Colors.grey,width:0.5),
          borderRadius: BorderRadius.circular(5),
          
        ),
        title:Text(
          widget.product.producttitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(fontWeight: FontWeight.bold),
          ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.productdescription,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
            const SizedBox(height: 10),
            
            Row(
              children: [
                const Text("Price:"),
                const SizedBox(width: 6,),
                Text('💲 ${widget.product.productprice.toString()} '),
                const Text(" Rating :"),
                const SizedBox(width: 10,),
                Text(widget.product.rating.ratind.toString()),
                _buildStarRating(widget.product.rating.ratind),

                const Divider()
              ],
            )
          ],
        ),
        leading: SizedBox
        (
          height: 70,
          width: 70,
          child: Image.network(widget.product.productimage)
        ),
      
      
        
      ),
    );
  }
  Widget _buildStarRating(double rating) {
    // Calculate full stars, half stars, and empty stars
    int fullStars = rating.toInt(); // Number of full stars
    // bool hasHalfStar = (rating - fullStars) >= 0.5; // Check for half star

    return Row(
      children: [
        for(int i=0;i<fullStars;i++)
          const Icon(Icons.star, color: Colors.amber, size: 18),
        // // Display full stars
        // for (int i = 0; i < fullStars; i++)
        //   const Icon(Icons.star, color: Colors.amber, size: 18),
        // // Display half star if applicable
        // if (hasHalfStar) const Icon(Icons.star_half, color: Colors.amber, size: 18),
        // // Display empty stars to complete 5 stars if needed
        // for (int i = 0; i < (5 - fullStars - (hasHalfStar ? 1 : 0)); i++)
        //   const Icon(Icons.star_border, color: Colors.amber, size: 18),
      ],
    );
  }
}