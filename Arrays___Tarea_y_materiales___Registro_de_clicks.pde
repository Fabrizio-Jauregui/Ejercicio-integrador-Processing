int[] guardarX = new int[10];
int[] guardarY = new int[10];
int acum = 0;
void setup() {
  size(800, 800);
  frameRate(60);
  for (int i = 0; i < 10; i++) {
  guardarX[i] =  -100;
  guardarY[i] =  -100;
  }
}
void draw() {
  background(220);

  for (int i = 0; i < 10; i++) {
    circle(guardarX[i], guardarY[i], 100);
    println(guardarX[i]);
    println(guardarY[i]);
  }
}
void mousePressed() {

  guardarX[acum] = mouseX;
  guardarY[acum] = mouseY;
  circle(guardarX[acum], guardarY[acum], 100);
 
  println(guardarX[acum]);
  println(guardarY[acum]);
  acum = acum + 1;
  if (acum > 9) acum = 0;

}
