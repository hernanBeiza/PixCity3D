import peasy.*;

String version = "0.0.1";

int cuadraAncho = 40;
int cuadraAlto = 40;

int cuadraSeparador = 10;

PeasyCam cam;

Suelo suelo;
ArrayList <Calle> calles;

int distancia = 1000;

void setup() {
  size(600,600,P3D);
  
  cam = new PeasyCam(this, distancia);
  cam.setMinimumDistance(10);
  cam.setMaximumDistance(2000);
  
  suelo = new Suelo(0,0,0);
  
  // + 1 para cerrar
  int totalX = distancia/(cuadraAncho+cuadraSeparador)+1;
  
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
  
}

void draw() {
  //rotateX(-.5);
  //rotateY(-.5);
  //background(255,255,0);
  background(255);
  lights();
  suelo.draw();
  for(int i = 0;i<calles.size();i++){
    Calle miCalle = (Calle)calles.get(i);  
    miCalle.draw();
    //println(miCalle.toString());
  }  
  saveFrame("frames/"+version+"/"+version+"####.tif");  

}