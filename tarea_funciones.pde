//poner un circulo en medio de la pantalla y que cuando se pase el cursor por este, se cambie de color
//en la funcion poner el radio del ciruculo, la posicion del circulo, el punto donde toca el circulo

void setup(){
 size(1000, 1000); 
}

boolean estaTocando(int posxMouse, int posyMouse, int posxCircle, int posyCircle, int radioCircle){
 float r = radioCircle;
 float d = dist(posxMouse, posyMouse, posxCircle, posyCircle);
 if(d > r) return false;
 else return true;
}

void crearCirculo(int posxC, int posyC, int sizeC){
   if(estaTocando(mouseX, mouseY, posxC, posyC, sizeC))fill(2, 60, 60);
   else fill(255);
   circle(posxC, posyC, sizeC*2);
}


void draw(){
   crearCirculo(100, 100, 100);
   crearCirculo(200, 500, 200);
 
 
}
