/// smallThumbnail : "http://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
library;

class ImageLinks {
  ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) {
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }
  String? _smallThumbnail;
  String? _thumbnail;

  String? get smallThumbnail => _smallThumbnail;
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }
}
