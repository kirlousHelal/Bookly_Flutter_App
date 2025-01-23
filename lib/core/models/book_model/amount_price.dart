class AmountPrice {
  final num? amount;
  final String? currencyCode;

  AmountPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory AmountPrice.fromJson(Map<String, dynamic> json) {
    return AmountPrice(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currencyCode': currencyCode,
    };
  }
}
