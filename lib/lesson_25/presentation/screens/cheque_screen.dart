import 'package:flutter/material.dart';
import 'package:flutter_02_flutter/lesson_25/domain/entity/cheque_entity.dart';
import 'package:flutter_02_flutter/lesson_25/data/repository/cheque_repository.dart';

class ChequeScreen extends StatefulWidget {
  const ChequeScreen({super.key});

  @override
  State<ChequeScreen> createState() => _ChequeScreenState();
}

class _ChequeScreenState extends State<ChequeScreen> {
  final _repository = ChequeRepository();

  late Future<ChequeEntity> _chequeFuture;

  @override
  void initState() {
    super.initState();

    _chequeFuture = _repository.loadCheque();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 25')),
      body: FutureBuilder<ChequeEntity>(
        future: _chequeFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          final cheque = snapshot.data!;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '🧾 Чек №${cheque.chequeId}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      '💰 Загальна сума: ${cheque.totalAmount.toStringAsFixed(2)} грн',
                      style: const TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 24),

                    const Text(
                      '🛒 Список товарів:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    ...cheque.items.map(
                      (item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• '),
                            Expanded(child: Text(item)),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    const Text(
                      '🔮 Передбачення:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      cheque.prediction,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
