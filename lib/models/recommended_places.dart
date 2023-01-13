class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;

  RecommendedPlaceModel(
      {required this.image, required this.rating, required this.location});
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
      image: 'lib/assets/places/place5.jpg',
      rating: 4.4,
      location: "First Random Place"),
  RecommendedPlaceModel(
      image: 'lib/assets/places/place4.jpg',
      rating: 3.6,
      location: "Second Random Place"),
  RecommendedPlaceModel(
      image: 'lib/assets/places/place3.jpg',
      rating: 4.7,
      location: "Third Random Place"),
  RecommendedPlaceModel(
      image: 'lib/assets/places/place2.jpg',
      rating: 5.0,
      location: "Fourth Random Place"),
  RecommendedPlaceModel(
      image: 'lib/assets/places/place1.jpg',
      rating: 4.2,
      location: "Fifth Random Place"),
];
