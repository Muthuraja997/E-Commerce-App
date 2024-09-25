import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_bloc.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_event.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  void initState() {
    final bloc = BlocProvider.of<AllProductsBloc>(context);
    bloc.add(FetchAllproducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllProductsBloc, AllProductsState>(
        builder: (context, state) {
      return state.loading? const CircularProgressIndicator(): Center(
        child: state.allproduct.isEmpty?
        Text(state.allproduct[1].producttitle):const Text("Nothing to show"),
      );
    });
  }
}
