class Cuadra extends Elemento {
  int index;
  int x;
  int y;
  int z;
  
  int w;
  int l;
  int h;  
  
  ArrayList <Edificio> edificios = new ArrayList<Edificio>();    

  Cuadra(int index, int x, int y, int z){
    super();
    this.miColor = color(255,0,255);    
    this.index = index;
    
    this.x = x;
    this.y = y;
    this.z = z;
    
    this.w = cuadraAncho;
    this.l = cuadraLargo;
    this.h = 2; 
    
    //this.config();
    
    println("Cuadra: " + index);    
  }
  
  void config() {    
    pushMatrix();
    translate(this.x,this.y,this.z);  
    int miZ = this.h/2;
    int total = 6;
    int miX = 0;
    int miY = -this.l/2+this.obtenerLargo()/2;
    int contador = 0;
    for(int i = 0;i<total;i++){      
      int edificioAncho = this.obtenerAncho();//int(random(50,100));
      int edificioLargo = this.obtenerLargo();//int(random(50,100));
      
      int separacionX = 0;//int(random(edificioAncho,110));
      int separacionY = 0;//int(random(edificioAlto,110));
      
      int iniX = -this.w/2;//edificioAncho/2;
      int iniY = -this.l/2;//edificioAlto/2;
            
      if(contador>=2){
        miX = 0;
        miY += iniY+separacionY+edificioLargo;
        contador = 0;
      }
      
      Edificio miEdificio = new Edificio(i,miX,miY,miZ,edificioAncho,edificioLargo);
      edificios.add(miEdificio);
      
      miX += iniX+separacionX+edificioAncho;
      contador++;
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
    box(w,l,h);     
    //rectMode(CENTER);
    //rect(0,0,w,l);
    
    /*
    for(int i = 0;i<edificios.size();i++){
      Edificio edificio = edificios.get(i);  
      edificio.draw();  
    }
    */
    
    popMatrix();        
  }
  
  int obtenerAncho(){
      int ancho = int(random(this.w/10,this.w/4));
      for(int i = 0;i<edificios.size();i++){
        if(ancho<edificios.get(i).w){
          ancho = edificios.get(i).w;
        }
      } 
      return ancho;
  }
  
  
  int obtenerLargo(){
      int largo = int(random(this.l/10,this.l/4));
      for(int i = 0;i<edificios.size();i++){
        if(largo<edificios.get(i).l){
          largo = edificios.get(i).l;
        }
      } 
      return largo;
  }
  
}