import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_bloc.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_event.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_state.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';
import 'package:flutter_application_1/widgets/single_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProduct extends StatefulWidget {
  final NavigatorState navigatorState;
  const AllProduct({super.key,required this.navigatorState});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  // @override
// void initState() {
//   super.initState();
//   BlocProvider.of<AllProductsBloc>(context).add(FetchAllproducts());
// }

  @override
  void initState() {
    final bloc = BlocProvider.of<AllProductsBloc>(context);
    bloc.add(FetchAllproducts());
    super.initState();
  }

  Widget getbody(List<Product> product) {
    return ListView.builder(
        itemCount: product.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            onTap:(){
              widget.navigatorState.pushNamed
              ('DetailPage',
              arguments: {
                'product':product[index]
              },
              );
            } ,
            product: product[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E-commerce app",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<AllProductsBloc, AllProductsState>(
          builder: (context, state) {
            return state.loading
    ? const Center(child: CircularProgressIndicator())  
    : getbody(state.allproduct);
      }),
    );
    // return state.loading ? CircularProgressIndicator()
    //  :state.allproduct !=null && state.allproduct!.isNotEmpty
    //  ? Text(state.allproduct![0].producttitle): const Text("Nothing to show");
  }
}





    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("My APP"),
    //   ),
    //   body: const Text('reference'),
    // );








