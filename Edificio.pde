class Edificio extends Elemento {
  int i;
  int x;
  int y;
  int z;
  int w;
  int h;
  int d;

  Edificio(int i, int x, int y, int z) {
    super();

    this.i = i;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = int(random(4, 10));
    this.h = int(random(4, 10));
    this.d = int(random(4, 20));
  }

  Edificio(int i, int x, int y, int z, int w, int h) {
    super();
    this.i = i;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
    this.h = h;
    this.d = int(random(4, 20));
  }

  void draw() {
    pushMatrix();
    translate(this.x, this.y, this.z+this.d/2);  
    //super.draw();
    //noStroke();
    //fill(miColor);
    noFill();
    stroke(miColor);
    box(w, h, d);      
    popMatrix();
  }
}