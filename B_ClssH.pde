//Clases H de herramientas XD

//clase boton
class Boton extends Textos {
  int x, y, anc, alt;
  PFont principal;

  Boton(PFont principal, int tam) {
    super(principal, tam);
    this.principal = principal;
  }
  void DB(int x, int y, int anc, int alt, String txt) {//dibujo boton
    this.x = x;
    this.y = y;
    this.anc = anc;
    this.alt = alt;
    fill(255);
    rectMode(CENTER);
    rect(x, y, anc, alt, 7);
    txt(txt, 0, x, y + 6); //quiero que los textos de los botones se centren y no me sale >:c
  }
}
//clase texto
class Textos {
  PFont principal;
  int tam;

  Textos(PFont principal, int tam) {
    this.principal = principal; 
    this.tam = tam;
  }
  //para todos los txt y titulos
  void txt(String Gato, color B, int x, int y) {
    fill(B);
    textFont(principal);
    textSize(tam);
    textAlign(CENTER);
    text(Gato, x, y);
  }
 //lo mismo pero alineado a la derecha, podria hacer un parametro mas de tipo string, pero no se si funcione
 //ademas ya de por si tiene 5 parametros, y son contadas las veces que se usara el 
 //formato alineado a la derecha, asi que por ahora lo dejo asi
  void txtL(String Gato, color B, int x, int y) {
    fill(B);
    textFont(principal);
    textSize(tam);
    textAlign(LEFT);
    text(Gato, x, y);
  }
  
}
