abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  double area() {
    double areaOfCircle = 3.14 * radius * radius;
    return areaOfCircle;
  }

  String toString() {
    return 'Circle';
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    double areaOfRectangle = width * height;
    ;
    return areaOfRectangle;
  }

  String toString() {
    return 'Rectangle';
  }
}

void printArea(Shape shape) {
  print('Area of ${shape.toString()}: ${shape.area()}');
}

void main() {
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  printArea(circle);
  printArea(rectangle);
}
