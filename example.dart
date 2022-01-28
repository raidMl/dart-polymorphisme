void main() {
  Car car1 = Car();
  car1.drive();
  Suzuki ibiza = Suzuki();
  ibiza.drive();

  SelfDrivingCar selfDrive1 = SelfDrivingCar("to setif");
  selfDrive1.drive();
}

class Car {
  int seatNbr = 5;
  void drive() {
    print('wheels turn');
  }
}

class Suzuki extends Car {
  @override
  void drive() {
    print("wheels turn good in Suzuki ");
  }
}

class SelfDrivingCar extends Car {
  String destination = "";
  SelfDrivingCar(String userDestination) {
    //CONSTRACTOR
    destination = userDestination;
  }

  @override
  void drive() {
    super.drive();
    print("sterring towards $destination");
  }
}
