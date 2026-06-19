// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_header_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChequeHeaderDto _$ChequeHeaderDtoFromJson(Map<String, dynamic> json) =>
    ChequeHeaderDto(
      chequeId: (json['chequeId'] as num).toInt(),
      sumReg: (json['sumReg'] as num).toDouble(),
    );

Map<String, dynamic> _$ChequeHeaderDtoToJson(ChequeHeaderDto instance) =>
    <String, dynamic>{'chequeId': instance.chequeId, 'sumReg': instance.sumReg};
