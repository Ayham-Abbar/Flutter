import 'package:flutter/material.dart';
import 'package:session14/SheringDataWithConstructer/pages/product.dart';
import 'package:session14/SheringDataWithConstructer/pages/secound.dart';
import 'package:session14/SheringDataWithConstructer/pages/singleProduct.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = List.generate(
        100,
        (index) =>
            Product(name: 'Product${index + 1}', price: (index + 1) * 200));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, i) => ListTile(
                  title: Text('${products[i].name}'),
                  trailing: Text ('Price${products[i].price}'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Secound(price:products[i].price)));
                  },
                )
            // return Column(
            //   children: [
            //     SingleProduct(
            //       name: '${products[i].name}',
            //       price: products[i].price!,
            //       onTap: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => Secound()));
            //       },
            //     ),
            //     const SizedBox(
            //       height: 10,
            //     )
            //   ],
            // );
            ));
  }
}
