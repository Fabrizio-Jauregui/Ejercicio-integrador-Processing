void setup(){
 size(1000, 1000); 
}

float MouseVel(){
float ca = pmouseX-mouseX;
float co = pmouseY-mouseY;
float h = sqrt(ca*ca + co*co);

return h;
}

void draw(){
 
  strokeWeight(MouseVel());
  line(mouseX, mouseY, pmouseX, pmouseY);
  
}
