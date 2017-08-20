import peasy.*;

String version = "0.0.5";

int tamanoCiudad = 1000;

int cuadraAncho = 40;
int cuadraLargo = 40;
int cuadraSeparador = 20;

PeasyCam cam;

Ciudad ciudad;

ArrayList <Calle> calles;

int zoom = 100;
int zoomMAX = 4000;
int zoomMIN = 10;

float camX = 1;
float camY = 0.5;
float camZ = 0;

PFont font;

void setup() {
  size(600, 600, P3D);

  cam = new PeasyCam(this, zoom);
  cam.setMinimumDistance(zoomMIN);
  cam.setMaximumDistance(zoomMAX);

  font = loadFont("SansSerif-48.vlw");    

  ciudad = new Ciudad(0, 0, 0,tamanoCiudad,tamanoCiudad);
}

void draw() {
  background(0);
  lights();
  camara();
  ciudad.draw();
  //saveFrame("frames/"+version+"/"+version+"####.tif");
}

void camara() {
  rotateX(camX);
  rotateY(camY);
  camZ-=0.005;
  rotateZ(camZ);
}

void mousePressed() {
}

void mouseReleased() {
}