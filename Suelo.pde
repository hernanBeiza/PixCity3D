class Suelo extends Elemento {
  int x;
  int y;
  int z;
  int w;
  int h;
  int d;
  
  Suelo(int x, int y, int z){
    super();
    this.miColor = color(0,0,0);
    
    this.x = x;
    this.y = y;
    this.z = z;
    
    this.w = 1000;
    this.h = 1000;
    this.d = 2;
    
  }
  
  void draw(){
    pushMatrix();
    translate(this.x,this.y,this.z);
    super.draw();
    //noStroke();
    //fill(miColor);
    noFill();
    stroke(miColor);

    box(w,h,d);      
    popMatrix();
  }
    
}