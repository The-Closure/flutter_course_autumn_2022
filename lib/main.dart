clearAndDraw(Shape s) {
// logging cleaning validation
  s._draw();
  print('\n\n\n\n\n\n\n\n\n\n');
// cleaning
}

void main() {
  Circle c = Circle();
  clearAndDraw(c);
  Rect r = Rect();
  clearAndDraw(r);
  Triangle a = Triangle();
  clearAndDraw(a);
}

abstract class Shape {
  void _draw();
}

class Circle extends Shape {
  @override
  void _draw() {
    print('\t *\n\t***\n\t *');
  }
}

class Rect extends Shape {
  @override
  void _draw() {
    print('\t******\n\t******');
  }
}

class Triangle extends Shape {
  @override
  void _draw() {
    print('\t*\n\t**');
  }
}
