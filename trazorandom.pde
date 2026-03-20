int PmouseX = 0;
int PmouseY = 0;

void setup(){
 size(1000, 1000); 
}

int random(){
 int val = round(random(10));
 return val;
}

void draw(){
 if(mousePressed){
   strokeWeight(random());
 line(mouseX, mouseY, pmouseX, pmouseY);
 }
  
 
   
 
}
