class Calle extends Elemento {
  
  int index;
  int x;
  int y;
  int z;
  
  int w;
  int h;
  int d;

  String direccion;

  Calle(int index, int x, int y, int z, String direccion){
    super();
    
    this.miColor = color(255,255,0);
    
    this.index = index;
    this.x = x;
    this.y = y;  
    this.z = z;  
    this.direccion = direccion;

    this.w = 10;
    this.h = distancia;
    this.d = 2;
    
  }
  
  void draw() {
    pushMatrix();
    translate(this.x,this.y,this.z);
    //super.draw();
    
    if(this.direccion=="h"){
      rotate(radians(-90));
    }
    
    noStroke();
    fill(miColor);
    
    //noFill();
    //stroke(miColor);
    
    box(w,h,d);      
    popMatrix();
  }
  
  String toString(){
    return "Calle: " + this.index+" x: " +this.x+" y: " +this.y+" z: " + this.z;
  }
  
}