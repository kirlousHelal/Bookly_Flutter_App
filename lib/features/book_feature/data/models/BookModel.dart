import 'AccessInfo.dart';
import 'SaleInfo.dart';
import 'VolumeInfo.dart';

/// kind : "books#volume"
/// id : "jKBQAAAAMAAJ"
/// etag : "N7ilmYg+wbU"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/jKBQAAAAMAAJ"
/// volumeInfo : {"title":"The Psychology of Computer Programming","authors":["Gerald M. Weinberg"],"publisher":"New York : Van Nostrand Reinhold","publishedDate":"1971","description":"This classic volume probes how a program reflects its writer's personality; the effects of working environment on productivity; and many additional computer psychology issues.","industryIdentifiers":[{"type":"OTHER","identifier":"UOM:39015002110867"}],"readingModes":{"text":false,"image":false},"pageCount":316,"printType":"BOOK","categories":["Computers"],"averageRating":5,"ratingsCount":1,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.4.1.0.preview.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=jKBQAAAAMAAJ&dq=subject:Programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=jKBQAAAAMAAJ&dq=subject:Programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/The_Psychology_of_Computer_Programming.html?hl=&id=jKBQAAAAMAAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"NO_PAGES","embeddable":false,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=jKBQAAAAMAAJ&hl=&source=gbs_api","accessViewStatus":"NONE","quoteSharingAllowed":false}

class BookModel {
  BookModel({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
  }) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
  }

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
  }

  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;

  String? get kind => _kind;

  String? get id => _id;

  String? get etag => _etag;

  String? get selfLink => _selfLink;

  VolumeInfo? get volumeInfo => _volumeInfo;

  SaleInfo? get saleInfo => _saleInfo;

  AccessInfo? get accessInfo => _accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    return map;
  }
}
