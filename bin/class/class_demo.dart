import 'dart:math';

class Point2D {
  int x, y;

  double get distance => sqrt(x * x + y * y);

  Point2D(this.x, this.y);

  Point2D.alongXAxis(int x) : this(x, 0);

  factory Point2D.fromJson(Map<String, int> json) {
    // return Point2D(json['x'] as int, json['y'] as int);
    return Point3D(1, 2, 3);
  }

  Point2D operator +(Point2D other) => Point2D(x + other.x, y + other.y);

  @override
  bool operator ==(other) => other is Point2D && x == other.x && y == other.y;

  @override
  String toString() {
    // return super.toString();
    String str = '...';
    return str;
  }

  @override
  int get hashCode => super.hashCode;
}

class Point3D extends Point2D {
  int z;
  Point3D(int x, int y, this.z) : super(x, y);
  factory Point3D.fromJson(Map<String, int> json) {
    return Point3D(json['x'] as int, json['y'] as int, json['z'] as int);
  }

  @override
  double get distance => sqrt(x * x + y * y + z * z);
}

void main(List<String> args) {
  final p1 = Point2D(1, 2);
  final p2 = Point2D.alongXAxis(3); //(3, 0)
  final result = p1 + p2;
  print(result.x);
  print(result.y);
  // final p3 = Point3D(1, 2, 3);
}
