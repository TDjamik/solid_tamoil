// import '../main.dart';
//
// import 'dart:html';
//bad
/*
void main() {
  Rectangle rect = Rectangle(12.0, 18.0);
  Area a = Area(rect);
  a.calculateArea();
}

class Area {
  final Rectangle shape;

  Area(this.shape);

  void calculateArea() {
    print(shape.calculateArea());
  }
}

class Rectangle {
  final double width;
  final double heigth;

  Rectangle(this.width, this.heigth);

  double calculateArea() {
    print("I am Rectangle");
    return width * heigth;
  }
}
*/



//bad
/*
void main() {
  Rectangle rect = Rectangle(12.0, 18.0);
  Area a = Area(rect);
  a.calculateArea();
  Square sq = Square(12.0);
  Area area = Area(sq);
  area.calculateArea();
}

class Area {
  final Object shape;

  Area(this.shape);

  void calculateArea() {
    if (shape is Rectangle) {
      Rectangle rect = shape as Rectangle;
      print(rect.calculateArea());
    } else if (shape is Square) {
      Square sq = shape as Square;
      print(sq.calculateArea());
    } else {}
  }
}

class Square {
  final double side;

  Square(this.side);

  double calculateArea() {
    print("I am Square");
    return side * side;
  }
}

class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    print("I am Rectangle");
    return width * height;
  }
}
*/

//success
/*
void main() {
  Rectangle rect = Rectangle(12.0, 18.0);
  Area a = Area(rect);
  a.calculateArea();
  Shape sq = Square(12.0);
  Area area = Area(sq);
  area.calculateArea();
}
class Area {
  final Shape shape;
  Area(this.shape);
  void calculateArea(){
    print(shape.calculateArea());
  }
}
abstract class Shape {
  double calculateArea();
}
class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}
class Square implements Shape {
  final double side;
  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

class Triangle implements Shape{
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}
 */