import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_bloc.dart';
import 'package:flutter_application_1/repositaries/all_products_repo/all_product_actions.dart';
import 'package:flutter_application_1/screens/all_products/all_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseApp extends StatefulWidget {
  const BaseApp({super.key});

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  @override
  Widget build(BuildContext context) {
    final allproductAction = AllProductActions();
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (_) => allproductAction)
          ],
        child: MultiBlocProvider(
          providers: [
          BlocProvider(
              create: (_) => AllProductsBloc(productActions: allproductAction))
        ], 
        child: const AllProduct()));
  }
}
