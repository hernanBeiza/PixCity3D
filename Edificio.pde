class Edificio extends Elemento {
  int i;
  int x;
  int y;
  int z;
  int w;
  int h;
  int d;

  Edificio(int i, int x, int y, int z, int w, int h) {
    super();
    this.miColor = color(100);
    this.i = i;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
    this.h = h;
    this.d = int(random(10, 100));
  }

  void draw() {
    pushMatrix();
    translate(this.x, this.y, this.z+this.d/2);  
    //super.draw();
    noStroke();
    fill(miColor);
    //noFill();
    //stroke(miColor);
    box(w, h, d);
    popMatrix();
  }
}