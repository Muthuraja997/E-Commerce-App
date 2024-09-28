import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_bloc.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';
import 'package:flutter_application_1/repositaries/all_products_repo/all_product_actions.dart';
import 'package:flutter_application_1/screens/all_products/all_product.dart';
import 'package:flutter_application_1/screens/detail_page/detail_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseApp extends StatefulWidget {
  const BaseApp({super.key});

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final rootNavigator=navigatorkey.currentState!;
    final args =settings.arguments as Map<String,dynamic>? ?? {};
    Widget widget;
    switch (settings.name) {
      case '/':
        widget =  AllProduct(navigatorState:rootNavigator);
        break;
      case 'DetailPage':
        widget =  DetailPage(
          product: args['product'] as Product,
        );
        break;
      default:
        throw Exception("Invalid navication");
    }
    builder(BuildContext context) => widget;
    return MaterialPageRoute<void>(builder: builder, settings: settings);
  }

  @override
  Widget build(BuildContext context) {
    final allproductAction = AllProductActions();
    return MultiRepositoryProvider(
        providers: [RepositoryProvider(create: (_) => allproductAction)],
        child: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (_) =>
                      AllProductsBloc(productActions: allproductAction))
            ],
            child: Navigator(
              initialRoute: '/',
              key: navigatorkey,
              onGenerateRoute: onGenerateRoute,
            )));
  }
}
