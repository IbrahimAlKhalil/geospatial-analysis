import 'package:geospatial_analysis/geospatial_analysis.dart';
import 'package:test/test.dart';

void main() {
  group('Point', () {
    test('Point.fromList should throw an ArgumentError', () {
      expect(() => Point.fromList([]), throwsArgumentError);
      expect(() => Point.fromList([1]), throwsArgumentError);
      expect(() => Point.fromList([1, 2, 3]), throwsArgumentError);
    });

    test('Point should throw an AssertionError', () {
      expect(() => Point(lng: 190, lat: 100), throwsA(isA<AssertionError>()));
      expect(() => Point(lng: -190, lat: -100), throwsA(isA<AssertionError>()));
    });

    test('Point (A) must be equal to Point (B)', () {
      final pointA = Point(lng: 100, lat: 60);
      final pointB = Point(lng: 100, lat: 60);

      expect(pointA, equals(pointB));
    });
  });
}
