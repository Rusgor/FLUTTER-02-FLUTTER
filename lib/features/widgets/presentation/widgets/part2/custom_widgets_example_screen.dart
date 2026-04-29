import 'package:flutter/material.dart';

class CustomWidgetsExampleScreen extends StatelessWidget {
  CustomWidgetsExampleScreen({super.key});
  final List<Map<String, String>> items = [
    {
      'title': 'Samsung Galaxy S2',
      'desc': 'Latest Samsung smartphone',
      'price': '300 \$USD',
    },
    {
      'title': 'Samsung Galaxy S23',
      'desc': 'Latest Google smartphone',
      'price': '300 \$USD',
    },
    {
      'title': 'Samsung Galaxy 3',
      'desc': 'Latest OnePlus smartphone',
      'price': '300 \$USD',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widgets'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 12,
          children: [
            ...items.map(
              (item) {
                if (item['title'] == 'Samsung Galaxy S23') {
                  return const Text('Hello');
                }
                return CardItem(
                  desc: item['desc'] ?? '',
                  price: item['price'] ?? '',
                  title: item['title'] ?? '',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    required this.desc,
    required this.price,
    required this.title,
    super.key,
  });
  final String title;
  final String desc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(desc),
          const SizedBox(height: 8),
          Text(
            price,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
