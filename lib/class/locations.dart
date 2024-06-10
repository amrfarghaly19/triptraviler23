class Location {
  String id;
  String name;
  String description;
  String image;
  double latitude;
  double longitude;
  String reviewId;

  Location({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.latitude,
    required this.longitude,
    required this.reviewId,
  });

  factory Location.fromFirestore(Map<String, dynamic> doc) {
    return Location(
      id: doc['id'] as String? ?? 'default-id',
      name: doc['name'] as String? ?? 'Unnamed Location',
      description: doc['description'] as String? ?? 'No description provided',
      image: doc['image'] as String? ?? 'https://example.com/default-image.jpg',
      latitude: (doc['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (doc['longitude'] as num?)?.toDouble() ?? 0.0,
      reviewId: doc['reviewId'] as String? ?? 'no-review-id',
    );
  }
}
