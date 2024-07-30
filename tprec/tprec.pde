//Julian Mercado Comision 3 TP3(RECUPERATORIO)
//link https://www.youtube.com/watch?v=e54vtuG8yKg

color colorcuadrado;
color colorcirculo;
boolean ColorPredet = true;
PImage obratp3;

void setup() {
  size(800, 400);
  noLoop();
  colorcuadrado = color(0);
  colorcirculo = color(255);
  obratp3 = loadImage("obratp3.png");
}

void draw() {

  int columnas = 10;
  int filas = 10;
  float w = width / (2 * columnas);
  float h = height / filas;
  
  image(obratp3, 0 , 0 , width/2, width/2);
  translate(400, 0);
  
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      if ((i + j) % 2 == 0) {
        fill(colorcuadrado);
      } else {
        fill(255 - red(colorcuadrado), 255 - green(colorcuadrado), 255 - blue(colorcuadrado));
      }
      rect(i * w, j * h, w, h);
      
      fill((i + j) % 2 == 0 ? colorcirculo : color(255 - red(colorcirculo), 255 - green(colorcirculo), 255 - blue(colorcirculo)));
      ellipse(i * w + w/2, j * h + h/2, w/2, h/2);
    }
  }
}

void coloraleatorio(int R, int G, int B) {
  colorcuadrado = color(random(R), random(G), random(B));
  colorcirculo = color(random(R), random(G), random(B));
  ColorPredet = false;
}

void reiniciarcolor() {
  colorcuadrado = color(0);
  colorcirculo = color(255);
  ColorPredet = true;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    coloraleatorio(255, 255, 255);  // Cambia los colores con valores aleatorios dentro de los rangos RGB
  } else if (mouseButton == RIGHT) {
    reiniciarcolor();  // Reinicia los colores a blanco y negro
  }
  redraw();
}
