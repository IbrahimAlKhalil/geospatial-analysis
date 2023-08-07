import 'geometry.dart';

class Point extends Geometry {
  final num lng;
  final num lat;

  Point({required this.lng, required this.lat}) {
    assert(lng <= 180 && lng >= -180, 'Longitude must be between -180 and 180');
    assert(lat <= 90 && lat >= -90, 'Latitude must be between -90 and 90');
  }

  factory Point.fromList(List<num> lngLat) {
    if (lngLat.length != 2) {
      throw ArgumentError(
          'The lngLat list must contain exactly two elements (longitude and latitude).');
    }
    return Point(lng: lngLat[0], lat: lngLat[1]);
  }

  @override
  bool operator ==(Object other) {
    return other is Point && lng == other.lng && lat == other.lat;
  }

  @override
  int get hashCode => Object.hash(lng, lat);
}
