// Mercado Julian
// Tp1 Comision 3
//Variable guardar imagen
PImage Pacman;

void setup() {
  //tamaño de la ventana
  size(800, 400);
  //carga y define la ruta de imagen
  Pacman = loadImage("Pacman.jpg");
}

void draw(){
  //Dibuja imagen en la mitad izquierda de la ventana
  background(149,143,143);
  square(420,20,365);
  fill(255,213,0);
  image(Pacman, 0, 0, 400 ,400);
  ellipse(600,200,220,280);
  fill(0,0,0);
  noStroke();
  triangle(600,200,710,135,710,263);
  fill(0,0,0);
  ellipse(594,120,50,50);
  fill(255,255,255);
  ellipse(600,120,25,25);
  fill(255,255,255);
  ellipse(745,200,50,50);
  fill(0,0,0);
 }
   void mousePressed(){
  println(mouseX+","+mouseY);
  }
 

 
 
