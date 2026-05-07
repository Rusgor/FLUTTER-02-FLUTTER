import 'package:flutter/material.dart';
import 'package:flutter_02_flutter/lesson_12/lesson_12.dart';
import 'package:flutter_02_flutter/lesson_13/lesson_13.dart';

class CustomWidgetsExampleScreen extends StatelessWidget {
  CustomWidgetsExampleScreen({super.key});

  final List<Map<String, String>> items = [
    {
      'title': 'Samsung Galaxy S2',
      'desc': 'Latest Samsung smartphone',
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ============================
            // LESSON 12 BUTTON
            // ============================
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Material(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LessonTwelve()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Center(
                      child: Text(
                        'Lesson 12',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF2358D1),
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ============================
            // LESSON 13 BUTTON
            // ============================
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Material(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WidgetConstrainsTrainingScreen(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Center(
                      child: Text(
                        'Lesson 13',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFFE65100),
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ============================
            // ITEMS
            // ============================
            ...items.map(
              (item) => CardItem(
                title: item['title'] ?? '',
                desc: item['desc'] ?? '',
                price: item['price'] ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================
// CARD ITEM WIDGET
// ============================

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.title,
    required this.desc,
    required this.price,
  });

  final String title;
  final String desc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
