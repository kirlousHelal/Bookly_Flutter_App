class EbookAvailability {
  final bool? isAvailable;
  final String? acsTokenLink;

  EbookAvailability({
    required this.isAvailable,
    required this.acsTokenLink,
  });

  factory EbookAvailability.fromJson(Map<String, dynamic> json) {
    return EbookAvailability(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }
}
