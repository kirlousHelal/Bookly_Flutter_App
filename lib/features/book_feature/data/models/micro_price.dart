class MicrosPrice {
  final num? amountInMicros;
  final String? currencyCode;

  MicrosPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory MicrosPrice.fromJson(Map<String, dynamic> json) {
    return MicrosPrice(
      amountInMicros: json['amountInMicros'],
      currencyCode: json['currencyCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amountInMicros': amountInMicros,
      'currencyCode': currencyCode,
    };
  }
}
