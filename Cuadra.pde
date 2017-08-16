class Cuadra extends Elemento {
  int index;
  int x;
  int y;
  int z;
  
  int w;
  int h;
  int d;  
  
  Cuadra(int index, int x, int y, int z){
    super();

    this.index = index;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = cuadraAncho;
    this.h = cuadraAlto;
    this.d = 10;
  }
  
  void draw(){
    pushMatrix();
      translate(this.x,this.y,this.z);  
      super.draw();
      fill(255,0,0);
      noStroke();
      box(w,h,d);      
    popMatrix();        
  }
  
}