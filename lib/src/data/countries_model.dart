import 'dart:convert';

class CountriesModel {
  final String name;
  final String flag;
  final String code;
  final String dial_code;

  const CountriesModel(
    this.name,
    this.flag,
    this.code,
    this.dial_code,
  );

  CountriesModel copyWith({
    String? name,
    String? flag,
    String? code,
    String? dial_code,
  }) {
    return CountriesModel(
      name ?? this.name,
      flag ?? this.flag,
      code ?? this.code,
      dial_code ?? this.dial_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'flag': flag,
      'code': code,
      'dial_code': dial_code,
    };
  }

  factory CountriesModel.fromMap(Map<String, dynamic> map) {
    return CountriesModel(
      map['name'] ?? '',
      map['flag'] ?? '',
      map['code'] ?? '',
      map['dial_code'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CountriesModel.fromJson(String source) =>
      CountriesModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CountriesModel(name: $name, flag: $flag, code: $code, dial_code: $dial_code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CountriesModel &&
        other.name == name &&
        other.flag == flag &&
        other.code == code &&
        other.dial_code == dial_code;
  }

  @override
  int get hashCode {
    return name.hashCode ^ flag.hashCode ^ code.hashCode ^ dial_code.hashCode;
  }
}
