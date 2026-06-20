import 'package:json_annotation/json_annotation.dart';

part 'cheque_header_dto.g.dart';

@JsonSerializable()
class ChequeHeaderDto {
  const ChequeHeaderDto({required this.chequeId, required this.sumReg});

  final int chequeId;

  final double sumReg;

  factory ChequeHeaderDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeHeaderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeHeaderDtoToJson(this);
}
