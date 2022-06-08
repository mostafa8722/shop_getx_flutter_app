import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shop_getx_flutter_app/views/product_tile.dart';


import '../controllers/product_controller.dart';
class HomeScreen extends StatelessWidget{
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Shop"),),
        body: Column(
        children: [
         Expanded(child:
             Obx((){
               if(productController.isLoading.isTrue)
               return Center(child: CircularProgressIndicator(),) ;
                 else
               return   new StaggeredGridView.countBuilder(
                   crossAxisCount: 2,
                   itemCount: productController.productList.length,
                   mainAxisSpacing: 16.0,
                   crossAxisSpacing: 16.0,
                   itemBuilder: (BuildContext context, int index) =>   ProductTile(productController.productList[index]),
                   staggeredTileBuilder: (int index) =>
                   new StaggeredTile.count(2, index.isEven ? 2 : 1),

                 );
    })

         )
      ],
    ),
    );
  }
}