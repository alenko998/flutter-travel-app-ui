class TouristPlacesModel {
  final String name;
  final String image;

  TouristPlacesModel({required this.name, required this.image});
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Mountain", image: 'lib/assets/icons/mountain.png'),
  TouristPlacesModel(name: "Beach", image: 'lib/assets/icons/beach.png'),
  TouristPlacesModel(name: "Forest", image: 'lib/assets/icons/forest.png'),
  TouristPlacesModel(name: "City", image: 'lib/assets/icons/city.png'),
  TouristPlacesModel(name: "Desert", image: 'lib/assets/icons/desert.png')
];
