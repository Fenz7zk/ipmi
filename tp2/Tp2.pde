//Julian Mercado Comision 3 Legajo 119089/9

int animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto;
PImage Imagen1 , Imagen2 , Imagen3 ;
String texto1 , texto2 , texto3;

void setup() {
  animacion= 0;
  
  Imagen1 = loadImage("adan.png");
  Imagen2 = loadImage("Estrellada.jpg");
  Imagen3 = loadImage("Mona.jpeg");

  limiteDeAnimacion= 300;

  opacidad = 0;
  pantalla=1;
  tamTexto= 48;
  size(640, 480);
  textSize(tamTexto);

  texto1 = "Adan - Miguel angel";
  texto2 = "Noche Estrellada - van gogh";
  texto3 = "Mona lisa - Da vinci";
}

void draw() {
  background(0);
  animacion++;

  if (animacion > 300) {
    animacion = 0;
    pantalla++;
    if (pantalla > 4) {
      pantalla = 1;
    }
  }

  if (pantalla == 1) {
    image(Imagen1, 0 , 0 , 640, 480);
    fill(0, 0 , 0);
    text(texto1, animacion, height/2);
  }

  if (pantalla == 2) {
    image(Imagen2, 0 , 0 , 640, 480);
    fill(0, 0 , 0);
    text(texto2, 50, animacion);
  }

  if (pantalla == 3) {

    if (animacion < 255) {
      opacidad = animacion;
    }
    fill(255, opacidad);
    image(Imagen3, 0 , 0 , 640, 480);
    fill(0, 0 , 0);

    
}
    textSize(tamTexto);

    fill(0, 0, 0, opacidad);
    text(texto3, 5, height/2);
  }
