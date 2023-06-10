import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/commonmodule/AppColor.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/commonmodule/AppString.dart';
import 'package:my_flutter_getx_ripple_fetch_display_api_data/productmodule/views/product_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(primarySwatch: AppColor.greenColor),
      debugShowCheckedModeBanner: false,
      home: const ProductListView()

      );
    
  }
}
