//bad
/*
void main(){
  Rectangle rect = Rectangle(8, 5);
  print(rect.calculateArea());// OP = 40
  Square sq = Square(5, 5);
  print(sq.calculateArea());//OP = 25
  Rectangle square = Square(8, 5);
  print(square.calculateArea());// = 64
}
class Rectangle {
  final int width;
  final int height;
  Rectangle(this.width, this.height);
  int calculateArea() {
    return width * height;
  }
}
class Square extends Rectangle{
  final int width;
  final int height;
  Square(this.width, this.height) : super(width,height);
  @override
  int calculateArea() {
    return width * width;
  }
}
 */

//success
/*
void main(){
  Shape rect = Rectangle(8, 5);
  print(rect.calculateArea());// OP = 40
  Shape square = Square(5);
  print(square.calculateArea());// OP = 25
  Shape squr = Square(8);
  print(squr.calculateArea());// OP = 64
}
abstract class Shape{
  int calculateArea();
}
class Rectangle implements Shape{
  final int width;
  final int heigth;
  Rectangle(this.width, this.heigth);
  @override
  int calculateArea() {
    return width * heigth;
  }
}
class Square implements Shape{
  final int side;
  Square(this.side);

  @override
  int calculateArea() {
    return side * side;
  }
}

 */