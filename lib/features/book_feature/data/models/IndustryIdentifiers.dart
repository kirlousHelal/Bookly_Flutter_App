/// type : "OTHER"
/// identifier : "UOM:39015002110867"
library;

class IndustryIdentifiers {
  IndustryIdentifiers({
    String? type,
    String? identifier,
  }) {
    _type = type;
    _identifier = identifier;
  }

  IndustryIdentifiers.fromJson(dynamic json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }
  String? _type;
  String? _identifier;

  String? get type => _type;
  String? get identifier => _identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['identifier'] = _identifier;
    return map;
  }
}
