import 'dart:convert';

class SourceModel {
  String? id;
  String? name;

  SourceModel({this.id, this.name});

  @override
  String toString() => 'SourceModel(id: $id, name: $name)';

  factory SourceModel.fromMap(Map<String, dynamic> data) => SourceModel(
        id: data['id'] as String?,
        name: data['name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SourceModel].
  factory SourceModel.fromJson(String data) {
    return SourceModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SourceModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
