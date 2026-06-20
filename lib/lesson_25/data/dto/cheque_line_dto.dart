import 'package:json_annotation/json_annotation.dart';

part 'cheque_line_dto.g.dart';

@JsonSerializable()
class ChequeLineDto {
  const ChequeLineDto({required this.lagerNameUA});

  final String lagerNameUA;

  factory ChequeLineDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeLineDtoToJson(this);
}
