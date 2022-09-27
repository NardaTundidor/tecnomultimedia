Escenario es;

void setup(){
  size(600, 600);
  es = new Escenario();
}

void draw(){ 
  background(0);
  es.display();
  
}
void keyPressed() {
  es.mueveHada(keyCode);
}
