class Vehicle {
  final int id;
  final String name;
  final String amount;
  final String image;
  final String person;
  final String distance;

  const Vehicle(
      {required this.id,
      required this.name,
      required this.amount,
      required this.image,
      required this.person,
      required this.distance});
}

mixin VehicleList {
  static List<Vehicle> list() {
    const list = <Vehicle>[
      Vehicle(
          id: 1,
          name: 'Lucas Bookers',
          amount: '150',
          image: 'assets/car1.png',
          person: '4',
          distance: '15'),
      Vehicle(
          id: 2,
          name: 'Martoon Park',
          amount: '49',
          image: 'assets/car2.png',
          person: '4',
          distance: '41'),
      Vehicle(
          id: 3,
          name: 'London',
          amount: '149',
          image: 'assets/car3.png',
          person: '4',
          distance: '36'),
    ];
    return list;
  }
}
