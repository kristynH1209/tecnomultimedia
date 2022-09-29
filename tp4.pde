//Video en Youtube: https://youtu.be/ijSMTjeM80s
//Hernández kristyn | 91416/3
Principal ReproMusic;
import processing.sound.*;
SoundFile heaven;
SoundFile dayDream;
SoundFile getLucky;

void setup(){
 size(500, 500);
 background(0);
 ReproMusic = new Principal();
 heaven = new  SoundFile(this, "heaven.mp3");
 dayDream = new  SoundFile(this, "dayDream.mp3");
 getLucky = new SoundFile(this, "getLucky.mp3");
}
void draw(){
ReproMusic.BelloPatrick();
}
void mousePressed(){
 ReproMusic.puppycat();
}
