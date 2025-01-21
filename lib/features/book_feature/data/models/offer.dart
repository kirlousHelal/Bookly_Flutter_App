import 'micro_price.dart';

class Offer {
  final MicrosPrice listPrice;

  Offer({
    required this.listPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      listPrice: MicrosPrice.fromJson(json['listPrice']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'listPrice': listPrice.toJson(),
    };
  }
}
