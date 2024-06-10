/*
class GlobeCoordinates2 {
  final double latitude;
  final double longitude;

  GlobeCoordinates2(this.latitude, this.longitude);

  Map<String, dynamic> toJson() => {
    'latitude': latitude,
    'longitude': longitude,
  };

  factory GlobeCoordinates2.fromJson(Map<String, dynamic> json) => GlobeCoordinates2(
    json['latitude'],
    json['longitude'],
  );
}

class Country {
  String id;
  GlobeCoordinates2 coordinates;
  String label;
  bool isLabelVisible;

  Country({required this.id, required this.coordinates, required this.label, required this.isLabelVisible});

  Map<String, dynamic> toJson() => {
    'id': id,
    'coordinates': coordinates.toJson(),
    'label': label,
    'isLabelVisible': isLabelVisible,
  };

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: json['id'],
    coordinates: GlobeCoordinates2.fromJson(json['coordinates']),
    label: json['label'],
    isLabelVisible: json['isLabelVisible'],
  );
}
*/
