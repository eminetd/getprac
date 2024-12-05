// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_prac/controllers/s_controller.dart';

class ShoppingPage extends StatelessWidget {
   ShoppingPage({super.key});
  final shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context,index){
                    return Card(
                  child: Column(
                    children: [
                      Text("${controller.products[index].id}"),
                        Text(controller.products[index].pImage),
                          Text(controller.products[index].pname),
                            Text("${controller.products[index].price}"),
                              Text(controller.products[index].pdescrip)
                    ],
                  ),
                    );
                  },);
                }
              ),
              
            ),
            Text("total amm."),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}