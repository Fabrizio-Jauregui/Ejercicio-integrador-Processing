int cantFil = 50;
int cantCols = 50;

boolean[][]fueClickeado;

void setup() {
  size(800, 800);
  fueClickeado = new boolean[cantFil][cantCols];
}

void draw() {
  float ancho = width/cantCols;
  float alto = height/cantFil;
  for (int i=0; i<cantCols; i++) {
    for (int j=0; j<cantFil; j++) {
      
      float x = i * ancho;
      float y = j * alto;
      float limiteDerecho = x + ancho;
      float limiteInf = y + alto;
      
      if (mousePressed) {
        if ((x < mouseX) && (mouseX < limiteDerecho) && (y < mouseY) &&  (mouseY < limiteInf)) {
          fueClickeado[i][j] = true;
        }
      }
      if (fueClickeado[i][j]) fill(0);
      else fill(255);
      rect(x, y, ancho, alto);
    }
  }
}
