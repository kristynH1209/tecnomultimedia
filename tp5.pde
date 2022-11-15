Juego GatoEspacial;
void setup() {
  size(600, 500);
  GatoEspacial = new Juego();
}

void draw() {
  GatoEspacial.Dib();
  if (keyPressed) {
    GatoEspacial.MovP(keyCode);
  }
}

void mousePressed() {
  GatoEspacial.Inter();
}
