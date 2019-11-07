class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
}

/*
vw -> (4, 6)
ww -> (0, 0)
 */
void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 3);
  final vw = v + w;
  final ww = v - w;

  print('vw -> (${vw.x}, ${vw.y})');
  print('ww -> (${ww.x}, ${ww.y})');
}
