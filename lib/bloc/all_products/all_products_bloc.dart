import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_event.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_state.dart';
import 'package:flutter_application_1/repositaries/all_products_repo/all_product_actions.dart';

class AllProductsBloc extends Bloc<AllProductsEvent,AllProductsState>{
  final AllProductActions productActions;
  
  AllProductsBloc({required this.productActions}): super(const AllProductsState(allproduct: [])){
    on<FetchAllproducts>(_fetchproducts);
  }

  Future _fetchproducts(FetchAllproducts event,Emitter<AllProductsState> emit ) async{
      emit(state.copywith(loading: true));
      final AllProducts=await productActions.FetchAllproducts();
      emit(state.copywith(allproduct: AllProducts,loading: false));
  }
}