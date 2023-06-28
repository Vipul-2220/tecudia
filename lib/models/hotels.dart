class hotels {
  final String name;
  final String image;
  final String cost;
  final String rating;
  final String location;

  hotels({
    required this.name,
    required this.image,
    required this.cost,
    required this.rating,
    required this.location,
  });
}

List<hotels> hotel = [
  hotels(
    name: 'Santorini',
    image: 'images/SAN.jpg',
    cost: '488',
    rating: '4.9',
    location: 'Greece',
  ),
  hotels(
    name: 'Hotel Royal',
    image: 'images/royal.jpg',
    cost: '280',
    rating: '4.8',
    location: 'Spain',
  ),
  hotels(
    name: 'Taj Palace',
    image: 'images/taj.jpg',
    cost: '500',
    rating: '5.0',
    location: 'Mumbai',
  )
];
