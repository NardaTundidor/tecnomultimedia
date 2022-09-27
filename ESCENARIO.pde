class Escenario {
 Bosque bosque;
 Hada h;

 Ogro[] ogros;
  Escenario() {
    bosque = new Bosque ();
    h= new Hada();
   
  ogros = new Ogro[5];
    for (int i=0; i<5; i++){
     ogros[i] = new Ogro(height/2+(int)random(height/2),(int)random(width));
    } }
  void display() {
    bosque.dibujarBosque();
    h.dibujarHada();
   for (int i=0; i<5; i++){
    ogros[i].dibujarOgro(bosque.bx);
    }}
  
void mueveHada(int presionada) {
    h.moverHada(presionada);
  
}}
