import 'package:flutter/material.dart';
import 'package:project/widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    return Container(
        child: GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: pdts[index],
        child: PdtItem(name: pdts[index].name, imageUrl: pdts[index].imgUrl),
      ),
    ));
  }
}
