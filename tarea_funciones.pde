/*
quiero limitar la creacion de circulos a 10, se me ocurrio poner un random(0, 10); para limitar la funcion crearCirculo, pero para eso, 
*/

void setup(){
 size(1000, 1000); 
}



boolean estaTocando(int posxMouse, int posyMouse, int posxCircle, int posyCircle, int radioCircle){
 float r = radioCircle;
 float d = dist(posxMouse, posyMouse, posxCircle, posyCircle);
 if(d > r) return false;
 else return true;
}


void crearCirculo(int posxC, int posyC, int radio){
   if(estaTocando(mouseX, mouseY, posxC, posyC, radio))fill(2, 60, 60);
   else fill(255);
   circle(posxC, posyC, radio*2);
}


void draw(){

   crearCirculo(int(random(0, 1000)), int(random(0, 1000)), int(random(0, 200)));
  
}
