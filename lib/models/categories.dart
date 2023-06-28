class Categories {
  final String name;
  final String image;

  Categories({required this.name, required this.image});
}

List<Categories> cat = [
  Categories(name: 'Hotel', image: 'images/hotel.png'),
  Categories(name: 'Flight', image: 'images/flight.png'),
  Categories(name: 'Place', image: 'images/places.png'),
  Categories(name: 'Food', image: 'images/food.png'),
];
