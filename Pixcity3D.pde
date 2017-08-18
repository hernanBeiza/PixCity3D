import peasy.*;

String version = "0.0.4";

int cuadraAncho = 40;
int cuadraAlto = 40;

int cuadraSeparador = 10;

PeasyCam cam;

Suelo suelo;
ArrayList <Calle> calles;

ArrayList <Cuadra> cuadras;

int distancia = 1000;

float camX = 1;
float camY = 0.5;
float camZ = 0;

void setup() {
  size(600,600,P3D);
  
  cam = new PeasyCam(this, distancia);
  cam.setMinimumDistance(10);
  cam.setMaximumDistance(4000);
  
  suelo = new Suelo(0,0,0);
  
  int totalX = distancia/(cuadraAncho+cuadraSeparador);
  int totalY = distancia/(cuadraAlto+cuadraSeparador);
  
  //println("totalX: " + totalX +" totalY: " + totalY);
  calles = new ArrayList<Calle>();
  int posZ = 2;
  
  for(int i = 0;i<totalX;i++){
    int posX = (cuadraAncho+cuadraSeparador)*i-(distancia/2);
    int posY = (cuadraAlto+cuadraSeparador)*i-(distancia/2);

    Calle miCalle = new Calle(i,posX,0,posZ,"v");
    Calle miCalle2 = new Calle(i,0,posY,posZ,"h");

    calles.add(miCalle);
    calles.add(miCalle2);
  }
  
  //Cuadras
  translate(cuadraSeparador,cuadraSeparador);
  cuadras = new ArrayList<Cuadra>();
  int indice = 0;
  int iniX = -distancia/2+cuadraAncho/2+cuadraSeparador/2;
  int iniY = -distancia/2+cuadraAlto/2+cuadraSeparador/2;
  //println(iniX);
  for(int i = 0;i<totalX;i++){
    int posX = iniX+(cuadraAncho+cuadraSeparador)*i;
    for(int j = 0;j<totalY;j++){
      int posY = iniY+(cuadraAlto+cuadraSeparador)*j;
      Cuadra miCuadra = new Cuadra(indice,posX,posY,posZ);
      cuadras.add(miCuadra);    
      indice++;
    }
    indice++;
  }  
 
}

void draw() {
  background(0);
  lights();
  camara();
  suelo.draw();
  for(int i = 0;i<calles.size();i++){
    Calle miCalle = (Calle)calles.get(i);  
    miCalle.draw();
  } 
  for(int i = 0;i<cuadras.size();i++){
    Cuadra miCuadra = (Cuadra)cuadras.get(i);  
    miCuadra.draw();
  }
  saveFrame("frames/"+version+"/"+version+"####.tif");  
}

void camara(){
  rotateX(camX);
  rotateY(camY);
  camZ-=0.005;
  rotateZ(camZ);
}

void mousePressed(){
 
}

void mouseReleased(){

}