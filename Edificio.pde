class Edificio extends Elemento {
  int i;
  int x;
  int y;
  int z;
  int w;
  int l;
  int h;
 
  PFont font;
  float tamanoFont;
  String nombre;

  Edificio(int i, int x, int y, int z) {
    super();

    this.miColor = color(100);
    this.i = i;
    this.x = x;
    this.y = y;
    this.z = z;
    
    this.w = int(random(50, 100));
    this.l = int(random(50, 100));
    this.h = int(random(100, 500));
  
    this.config();
    
  }

  Edificio(int i, int x, int y, int z, int w, int l) {
    super();
    
    this.miColor = color(100);
    this.i = i;
    this.x = x;
    this.y = y;
    this.z = z;
    
    this.w = w;
    this.l = l;
    this.h = int(random(100, 250));
    
    this.config();
  }
  
  void config(){    
    //textFont(font);    
    textSize(12);
    this.nombre = "HA CORP";
    //println("nombre: " + textWidth(nombre));
    this.tamanoFont = this.w/textWidth(nombre);
    //println("tamano: " + tamanoFont);
    textAlign(CENTER, CENTER);
    println("Edificio: " + this.i);
  }

  void draw() {
    pushMatrix();
    translate(this.x, this.y, this.z+this.h/2);  
    super.draw();
    //noStroke();
    //fill(miColor);
    noFill();
    stroke(miColor);
    box(w, l, h);   
    //Nombre Edificio
    if(this.h>200){
      rotateX(radians(-90));
      fill(255,255,0);    
      text(this.nombre,0,-this.h/2+this.tamanoFont,this.w/2+1);    
    }
    /*
    float radio = 5;
    //sphere(radio);
    translate(0,0,this.d);
    rotateY(radians(90));
    fill(255,0,0);
    noStroke();    
    rect(0,0,radio,radio);
    */
    popMatrix();
  }
}