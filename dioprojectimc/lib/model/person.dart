import 'dart:convert';

class Person {
  String name;
  double weight;
  double height;
  Person({
    required this.name,
    required this.weight,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'weight': weight});
    result.addAll({'hight': height});

    return result;
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] ?? '',
      weight: map['weight']?.toDouble() ?? 0.0,
      height: map['hight']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  double calculateIMC() {
    return weight / (height * height);
  }
}
