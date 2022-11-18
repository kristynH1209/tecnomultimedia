import processing.sound.*;
Juego GatoEspacial;
SoundFile MyAss;
SoundFile dsdfjdsfh;
SoundFile MJ;
void setup() {
  size(600, 500);
  GatoEspacial = new Juego();
  MJ = new SoundFile(this, "MusicJ.mp3");
  MyAss = new SoundFile(this, "myAss.mp3");
  dsdfjdsfh = new SoundFile(this, "PuppyVoice.mp3");
  MJ.loop();
  MJ.amp(0.3);
}
void draw() {
  GatoEspacial.Dib();
  if (keyPressed) {
    GatoEspacial.MovP(keyCode);
  }
}
void mousePressed() {
  GatoEspacial.Touch();
}
