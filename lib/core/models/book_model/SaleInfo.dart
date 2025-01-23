import 'amount_price.dart';
import 'micro_price.dart';
import 'offer.dart';

class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;
  final AmountPrice? listPrice;
  final MicrosPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: json['listPrice'] != null
          ? AmountPrice.fromJson(json['listPrice'])
          : null,
      retailPrice: json['retailPrice'] != null
          ? MicrosPrice.fromJson(json['retailPrice'])
          : null,
      buyLink: json['buyLink'],
      offers: json['offers'] != null
          ? (json['offers'] as List).map((e) => Offer.fromJson(e)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
      'listPrice': listPrice?.toJson(),
      'retailPrice': retailPrice?.toJson(),
      'buyLink': buyLink,
      'offers': offers?.map((e) => e.toJson()).toList(),
    };
  }
}
