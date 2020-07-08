class Calle extends Elemento {
  
  int index;
  int x;
  int y;
  int z;
  
  int w;
  int l;
  int h;

  String direccion;

  Calle(int index, int x, int y, int z, int w, int l, String direccion){
    super();
    
    this.miColor = color(0);
    
    this.index = index;
    this.x = x;
    this.y = y;  
    this.z = z;  
    this.direccion = direccion;

    this.w = w;
    this.l = l;
    this.h = 2;
    
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
    
    //box(w,l,h);
    rect(0,0,w,l);
    popMatrix();
  }
  
  String toString(){
    return "Calle: " + this.index+" x: " +this.x+" y: " +this.y+" z: " + this.z;
  }
  
}