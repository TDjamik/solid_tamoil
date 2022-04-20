//bad
/*
void main() {
  Shape cube = Cube(3);
  print(cube.calculateArea());
  print(cube.calculateSurfaceArea());
  print(cube.calculateVolume());

  Shape rectangle = Rectangle(5, 8);
  print(rectangle.calculateArea());
  print(rectangle.calculateSurfaceArea());
  print(rectangle.calculateVolume());
}
abstract class Shape {
  double calculateArea();
  double calculateSurfaceArea();
  double calculateVolume();
}

class Rectangle implements Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
  @override
  double calculateArea() {
    return width * height;
  }
  @override
  double calculateSurfaceArea() {
    throw Exception('I am a 2 Dimensional object. No Surface Area');
  }
  @override
  double calculateVolume() {
    throw Exception('I am a 2 Dimensional object. Has No Volume');
  }
}
class Cube implements Shape {
  final double side;

  Cube(this.side);
  @override
  double calculateArea() {
    throw Exception('I am a 2 Dimensional object. No Surface Area');
  }
  @override
  double calculateSurfaceArea() {
    return 6 * (side * side);
  }
  @override
  double calculateVolume() {
    return side * side * side;
  }
}

 */

//success
/*
void main() {
  ThreeDimensionalShape cube = Cube(3);
  print(cube.calculateSurfaceArea());
  print(cube.calculateVolume());

  TwoDimensionalShape rectangle = Rectangle(5, 8);
  print(rectangle.calculateArea());
}
abstract class ThreeDimensionalShape {
  double calculateSurfaceArea();
  double calculateVolume();
}
abstract class TwoDimensionalShape {
  double calculateArea();
}
class Rectangle implements TwoDimensionalShape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
  @override
  double calculateArea() {
    return width * height;
  }
}
class Cube implements ThreeDimensionalShape {
  final double side;

  Cube(this.side);
  @override
  double calculateSurfaceArea() {
    return 6 * (side * side);
  }
  @override
  double calculateVolume() {
    return side * side * side;
  }
}

 */