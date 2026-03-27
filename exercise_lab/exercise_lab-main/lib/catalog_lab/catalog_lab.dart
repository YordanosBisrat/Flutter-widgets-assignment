import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final Color backgroundColor;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.backgroundColor,
  });
}

class CatalogLab extends StatefulWidget {
  const CatalogLab({super.key});

  @override
  State<CatalogLab> createState() => _CatalogLabState();
}

class _CatalogLabState extends State<CatalogLab> {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Coffee Mug',
      price: 12.99,
      imageUrl: 'https://picsum.photos/200?random=1',
      backgroundColor: const Color(0xFFD2B48C),
    ),
    Product(
      id: 2,
      name: 'Notebook',
      price: 5.99,
      imageUrl: 'https://picsum.photos/200?random=2',
      backgroundColor: const Color(0xFFA2B5CD),
    ),
    Product(
      id: 3,
      name: 'Pen Set',
      price: 8.49,
      imageUrl: 'https://picsum.photos/200?random=3',
      backgroundColor: const Color(0xFF9FB6CD),
    ),
    Product(
      id: 4,
      name: 'Backpack',
      price: 49.99,
      imageUrl: 'https://picsum.photos/200?random=4',
      backgroundColor: const Color(0xFFBC8F8F),
    ),
    Product(
      id: 5,
      name: 'Headphones',
      price: 89.99,
      imageUrl: 'https://picsum.photos/200?random=5',
      backgroundColor: const Color(0xFFC1CDCD),
    ),
    Product(
      id: 6,
      name: 'Smart Watch',
      price: 199.99,
      imageUrl: 'https://picsum.photos/200?random=6',
      backgroundColor: const Color(0xFFB5B5B5),
    ),
  ];

  String _selectedProductName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Catalog', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemCount: _products.length,
              itemBuilder: (context, index) {
                final product = _products[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedProductName = product.name;
                    });
                  },
                  child: Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.network(
                            product.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          color: product.backgroundColor.withAlpha(150),
                          child: Column(
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '\$${product.price}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          if (_selectedProductName.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF333333),
              child: Text(
                'You selected $_selectedProductName',
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
