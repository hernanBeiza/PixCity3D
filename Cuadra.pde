class Cuadra extends Elemento {
  int index;
  int x;
  int y;
  int z;
  
  int w;
  int h;
  int d;  
  
  ArrayList <Edificio> edificios = new ArrayList<Edificio>();    

  Cuadra(int index, int x, int y, int z){
    super();

    this.miColor = color(255,0,0);
    
    this.index = index;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = cuadraAncho;
    this.h = cuadraAlto;
    this.d = 2;
            
    int indice = 0;    
    //Edificios por cuadra/ancho de edificio
    int edificioAncho = 10;
    int edificioAlto = 10;
    int totalX = this.w/edificioAncho;
    int totalY = this.h/edificioAlto;

    int miZ = this.d/2;

    pushMatrix();
    translate(this.x,this.y,this.z);  
    int iniX = -this.w/2+edificioAncho/2;
    int iniY = -this.h/2+edificioAlto/2;
    //println("iniX: " + iniX + " iniY: "+ iniY);
    for(int i=0;i<totalX;i++){
      int miX = iniX+(edificioAncho)*i;
      for(int j=0;j<totalY;j++){
        int miY = iniY+(edificioAlto)*j;
        //println("miX: " + miX+ " miY: "+ miY);
        Edificio miEdificio = new Edificio(indice,miX,miY,miZ,edificioAncho,edificioAlto);
        edificios.add(miEdificio);  
        indice++;
      }
    }
    popMatrix();
  }
  
  void draw(){
    pushMatrix();
      translate(this.x,this.y,this.z);  
      //super.draw();
      //noStroke();
      //fill(miColor);
      noFill();
      stroke(miColor);
      box(w,h,d);      
      for(int i = 0;i<edificios.size();i++){
        Edificio edificio = edificios.get(i);  
        edificio.draw();  
      }  
    popMatrix();        
  }
  
}