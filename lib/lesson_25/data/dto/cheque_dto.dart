import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_02_flutter/lesson_25/data/dto/cheque_line_dto.dart';
import 'package:flutter_02_flutter/lesson_25/data/dto/cheque_header_dto.dart';
import 'package:flutter_02_flutter/lesson_25/domain/entity/cheque_entity.dart';

part 'cheque_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ChequeDto {
  const ChequeDto({
    required this.chequeHeader,
    required this.chPrediction,
    required this.chequeLines,
  });

  final ChequeHeaderDto chequeHeader;

  final String chPrediction;

  final List<ChequeLineDto> chequeLines;

  factory ChequeDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeDtoToJson(this);

  ChequeEntity toEntity() {
    return ChequeEntity(
      chequeId: chequeHeader.chequeId,
      totalAmount: chequeHeader.sumReg,
      items: chequeLines.map((line) => line.lagerNameUA).toList(),
      prediction: chPrediction,
    );
  }
}
