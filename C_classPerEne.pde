class Enemigo{
float tam, x, y, direc;
Enemigo(float x, float y, float tam){
this.tam = tam;
this.x = x;
this.y = y;
direc = random(1,5);
}
//esto hay que corregirlo, se supone que deben ir de derecha a izquierda.
void DE(){
  fill(0);
  rectMode(CENTER);
  rect(x, y, tam, tam);
}

void ME(){
if (x> width + tam) {
      x = -tam;
      y = random(height);
      direc = random(2, 4);
    }
    x+= direc;
  }

}//falta hace una clase para el personaje las coliciones y el resto de pantalla
///para la pantalla ganar debes superar los niveles y para la pantalla perder debe perder todas las vidas
// no se como hacer una clase de estados, y lo necesito :c
