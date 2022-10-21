clearAndDraw(Shape s) {
// logging cleaning validation
  print('\n\n\n\n\n\n\n\n\n\n');
  s._draw();
// cleaning
}

void main() {
  Circle c = Circle();
  clearAndDraw(c);
  Rect r = Rect();
  clearAndDraw(r);
  Arc a = Arc();
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

class Arc extends Shape {
  @override
  void _draw() {
    print('\t*\n\t**');
  }
}
