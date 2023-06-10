import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/commonmodule/AppColor.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/commonmodule/AppString.dart';

import '../controllers/product_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(AppString.productList)),
    body: Obx((){
      if (productController.isLoading.value){
        return Center(child: const CircularProgressIndicator());
      }else{
        return ListView.builder(itemCount: productController.productList.length ,itemBuilder: (context, index){
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        productController.productList[index].imageLink ?? "https://www.freepik.com/free-ai-image/bottle-with-flowers-flower-it_40234651.htm#&position=17&from_view=popular",
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                        color: AppColor.purpleColor,
                        colorBlendMode: BlendMode.color,
                      )
                    )
                  ),
                  Flexible(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productController.productList[index].name ?? "Galaxy on5 Pro", style: const TextStyle(fontSize: 18)),
                      Text(productController.productList[index].brand ?? "Samsung", style:  TextStyle(fontSize: 14, color: AppColor.grey)),
                      Text(productController.productList[index].category ?? "Mobile", style:  TextStyle(fontSize: 14, color: AppColor.grey))
                    
                    ],
                  ))
                ],
              ),

              Container(height: 2, color: AppColor.grey)
            ],
          );
        });

      }
    })
   
    
    );
  }
}