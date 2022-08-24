class Vehicle {
  final int id;
  final String name;
  final String image;
  final String person;

  const Vehicle({
    required this.id,
    required this.name,
    required this.image,
    required this.person,
  });
}

mixin VehicleList {
  static List<Vehicle> list() {
    const list = <Vehicle>[
      Vehicle(
        id: 1,
        name: 'Dirm XL',
        image: 'images/taxSide.png',
        person: '4',
      ),
      Vehicle(
        id: 2,
        name: 'Dirm XXL',
        image: 'images/taxSide.png',
        person: '6',
      ),
      Vehicle(
        id: 3,
        name: 'Dirm Boda',
        image: 'images/bodaSide.png',
        person: '1',
      ),
      Vehicle(
        id: 4,
        name: 'Dirm Bajaji',
        image: 'images/bajajSide.png',
        person: '3',
      ),
    ];
    return list;
  }
}

mixin VehiclepacelList {
  static List<Vehicle> list() {
    const list = <Vehicle>[
      Vehicle(
        id: 1,
        name: 'Dirm XL',
        image: 'images/bodaSide.png',
        person: '0',
      ),
      Vehicle(
        id: 2,
        name: 'Dirm Kirikuu',
        image: 'images/kirikuuSide.png',
        person: '6',
      ),
    ];
    return list;
  }
}
