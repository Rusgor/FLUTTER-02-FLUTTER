class ChequeEntity {
  final int chequeId;
  final double totalAmount;
  final List<String> items;
  final String prediction;

  const ChequeEntity({
    required this.chequeId,
    required this.totalAmount,
    required this.items,
    required this.prediction,
  });
}
