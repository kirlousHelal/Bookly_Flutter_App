import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';

/// isAvailable : false

class Pdf {
  Pdf({
    bool? isAvailable,
  }) {
    _isAvailable = isAvailable;
  }

  Pdf.fromJson(dynamic json) {
    BookModel bookModel = BookModel();
    bookModel.selfLink;
    _isAvailable = json['isAvailable'];
  }
  bool? _isAvailable;

  bool? get isAvailable => _isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    return map;
  }
}
