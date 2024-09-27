import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_event.dart';
import 'package:flutter_application_1/bloc/all_products/all_products_state.dart';
import 'package:flutter_application_1/repositaries/all_products_repo/all_product_actions.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final AllProductActions productActions;

  AllProductsBloc({required this.productActions})
      : super(const AllProductsState()) {
    on<FetchAllproducts>(_fetchproducts);
  }


//   Future<void> _fetchproducts(
//     FetchAllproducts event, Emitter<AllProductsState> emit) async {
//   try {
//     emit(state.copywith(loading: true));
//     final allProducts = await productActions.fetchAllproducts();
//     if (allProducts != null) {
//       emit(state.copywith(allproduct: allProducts, loading: false));
//     } else {
//       emit(state.copywith(loading: false));  // To handle null or error response
//       print('No products found or fetch failed.');
//     }
//   } catch (e) {
//     emit(state.copywith(loading: false));
//     print('Error during fetch: $e');
//   }
// }

  Future _fetchproducts(
      FetchAllproducts event, Emitter<AllProductsState> emit) async {
    emit(state.copywith(loading: true));
    final allProducts = await productActions.fetchAllproducts();
    emit(state.copywith(allproduct: allProducts, loading: false));
  }
}
