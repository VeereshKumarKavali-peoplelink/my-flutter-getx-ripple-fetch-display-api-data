
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/productmodule/models/product_model.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/apimodule/api_service.dart';

class ProductController extends GetxController{

  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;


  @override 
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  
  void fetchProducts() async{
    try{
      isLoading(true);
      var products = await ApiService.fetchProducts();
    
      productList.assignAll(products);

      
    }finally {
      isLoading(false);
    }
  }





}