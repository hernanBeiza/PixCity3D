class Ciudad extends Elemento {
  int x;
  int y;
  int z;
  
  int w;
  int l;
  int h;
  
  ArrayList <Cuadra> cuadras;

  Ciudad(int x, int y, int z, int w, int l){
    super();
    this.miColor = color(0,0,0);
    
    this.x = x;
    this.y = y;
    this.z = z;
    
    this.w = w;
    this.l = l;
    this.h = 2;    
    
    this.config();
  }
  
  void config(){


    int totalX = tamanoCiudad/(cuadraAncho+cuadraSeparador);
    int totalY = tamanoCiudad/(cuadraLargo+cuadraSeparador);
  
    println("totalX: " + totalX +" totalY: " + totalY);
    calles = new ArrayList<Calle>();
    int posZ = 2;
  
    for (int i = 0; i<totalX; i++) {
      int posX = (cuadraAncho+cuadraSeparador)*i-(tamanoCiudad/2);
      int posY = (cuadraLargo+cuadraSeparador)*i-(tamanoCiudad/2);
  
      Calle miCalle = new Calle(i, posX, 0, posZ, cuadraSeparador, tamanoCiudad, "v");
      Calle miCalle2 = new Calle(i, 0, posY, posZ, cuadraSeparador, tamanoCiudad, "h");
  
      calles.add(miCalle);
      calles.add(miCalle2);
    }
  
    //Cuadras    
    cuadras = new ArrayList<Cuadra>();
    int indice = 0;
    int iniX = this.x-tamanoCiudad/2+cuadraAncho/2+cuadraSeparador/2;
    int iniY = this.y-tamanoCiudad/2+cuadraLargo/2+cuadraSeparador/2;
    //println(iniX);
    for (int i = 0; i<totalX; i++) {
      int posX = iniX+(cuadraAncho+cuadraSeparador)*i;
      for (int j = 0; j<totalY; j++) {
        int posY = iniY+(cuadraLargo+cuadraSeparador)*j;
        Cuadra miCuadra = new Cuadra(indice, posX, posY, posZ);
        cuadras.add(miCuadra);    
        indice++;
      }
      indice++;
    }
    
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

    //Cuadras
    for (int i = 0; i<cuadras.size(); i++) {
      Cuadra miCuadra = (Cuadra)cuadras.get(i);  
      miCuadra.draw();
    }

    //Calles
    /*
    for(int i = 0;i<calles.size();i++){
     Calle miCalle = (Calle)calles.get(i);  
     miCalle.draw();
    } 
    */

    popMatrix();
  }
    
}