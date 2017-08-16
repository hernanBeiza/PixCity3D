class Edificio{
  int x;
  int y;
  int z;
  int w;
  int h;
  int d;
  
  Edificio(int x,int y,int z,int w,int h,int d){
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
    this.h = h;
    this.d = d;
  }
  
  void draw(){
    pushMatrix();
      translate(this.x,this.y,this.z);  
      fill(100);
      noStroke();
      box(w,h,d);      
    popMatrix();
  }
  
}