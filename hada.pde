class Hada{
  PImage hada;
  int hx, hy;
  Hada(){
    hx=400;
    hy=400;
     hada = loadImage("4ef5d8077009b1f5f5c93951e57203c3.png");
  }
  void dibujarHada() {
    image(hada, hx,hy,80,120 );
  }
  void moverHada(int tecla) {
    if (tecla==LEFT) {
      hx -= 20;
    }
    if (tecla == RIGHT) {
      hx += 20;
    }
     if (tecla==UP) {
      hy -= 20;
    
    }
    if (tecla == DOWN) {
      hy += 20;
  }
}
}
