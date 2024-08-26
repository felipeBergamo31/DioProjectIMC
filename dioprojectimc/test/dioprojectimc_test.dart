import 'package:dioprojectimc/dioprojectimc.dart';
import 'package:dioprojectimc/model/person.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    Person p = Person(name: "Felipe", weight: 112, height: 1.71);
    expect(p.name, "Felipe");
    expect(p.height, 1.71);
    expect(p.weight, 112);
    expect(p.calculateIMC().truncate(), 38);
  });
}
