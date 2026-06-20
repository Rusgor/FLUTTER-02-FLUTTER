import 'dart:convert';
import '../dto/cheque_dto.dart';
import 'package:flutter/services.dart';
import '../../domain/entity/cheque_entity.dart';

class ChequeRepository {
  Future<ChequeEntity> loadCheque() async {
    final jsonString = await rootBundle.loadString(
      'assets/json/silpo_cheque_example.json',
    );

    final json = jsonDecode(jsonString) as Map<String, dynamic>;

    final dto = ChequeDto.fromJson(json);

    return dto.toEntity();
  }
}
