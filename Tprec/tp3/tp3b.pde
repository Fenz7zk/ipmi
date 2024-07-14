// Julian Mercado comision 3 tp3 119089/9

int tamcuadrado = 50; // Tamaño del cuadrado
int numcuadrado = 8; // Número de cuadrados por lado
int tamcirculo = 20; // Tamaño del círculo dentro del cuadrado
boolean colorRandom = false;
color coloractual;
PImage obratp3;

void setup() {
  size(800, 400);
  noLoop(); // Para que el dibujo no se actualice continuamente
  patronrandom(); // Dibuja el patrón inicial
  obratp3 = loadImage("obratp3.png");
}

void draw() {
  
  translate(400, 0);
  image(obratp3, 0, 0, width/2, height);
}

void mouseClicked() {
  colorRandom = true; // Activa la bandera para elegir colores aleatorios
  patronrandom(); // Redibuja el patrón con colores aleatorios
}

void patronrandom() {
  background(255); // Fondo blanco
  
  // Ciclos para dibujar los cuadrados
  for (int i = 0; i < numcuadrado; i++) {
    for (int j = 0; j < numcuadrado; j++) {
      // Calcula las coordenadas del cuadrado
      int x = i * tamcuadrado;
      int y = j * tamcuadrado;
      
      // Dibuja el cuadrado blanco o negro según la posición
      if ((i + j) % 2 == 0) {
        fill(255);
        coloractual = color(255); // Guarda el color actual del cuadrado
      } else {
        fill(0);
        coloractual = color(0);
      }
      rect(x, y, tamcuadrado, tamcuadrado);
      
      // Dibuja el círculo dentro del cuadrado
      if (colorRandom) {
        fill(random(255), random(255), random(255)); // Color aleatorio para el círculo
      } else {
        fill(255 - red(coloractual), 255 - green(coloractual), 255 - blue(coloractual)); // Color complementario al del cuadrado
      }
      ellipse(x + tamcuadrado/2, y + tamcuadrado/2, tamcirculo, tamcirculo);
    }
  }
  
  colorRandom = false; // Reinicia la bandera para el siguiente click
}
