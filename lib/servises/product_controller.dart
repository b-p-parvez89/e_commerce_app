// import 'package:e_commerce_app/servises/api_servises.dart';
// import 'package:get/get.dart';

// import '../model/product.dart';


// class ProductController extends GetxController {
//   final FakeApiService apiService = FakeApiService();
//   final isLoading = true.obs;
//   final products = <Product>[].obs;

//   @override
//   void onInit() {
//     _fetchProducts();
//     super.onInit();
//   }

//   Future<void> _fetchProducts() async {
//     try {
//       isLoading.value = true;
//       final fetchedProducts = await apiService.fetchProducts();
//       products.assignAll(fetchedProducts);
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }
