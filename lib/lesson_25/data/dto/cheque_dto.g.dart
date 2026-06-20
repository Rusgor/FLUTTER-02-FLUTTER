// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChequeDto _$ChequeDtoFromJson(Map<String, dynamic> json) => ChequeDto(
  chequeHeader: ChequeHeaderDto.fromJson(
    json['chequeHeader'] as Map<String, dynamic>,
  ),
  chPrediction: json['chPrediction'] as String,
  chequeLines: (json['chequeLines'] as List<dynamic>)
      .map((e) => ChequeLineDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChequeDtoToJson(ChequeDto instance) => <String, dynamic>{
  'chequeHeader': instance.chequeHeader.toJson(),
  'chPrediction': instance.chPrediction,
  'chequeLines': instance.chequeLines.map((e) => e.toJson()).toList(),
};
