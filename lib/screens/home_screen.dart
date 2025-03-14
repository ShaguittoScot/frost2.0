// TODO Implement this library.
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario del Refrigerador'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Productos a punto de caducar:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: ProductList()),
        ],
      ),
    );
  }
}
