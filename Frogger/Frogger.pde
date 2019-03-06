int frogX = 200;
int frogY = 375;
class Car{
 int carX;
 int carY;
 int carLength;
 int carWidth;
 int carSpeed;
 Car(int carX, int carY, int carLength, int carWidth, int carSpeed){
   this.carX = carX;
   this.carY = carY;
   this.carLength = carLength;
   this.carWidth = carWidth;
   this.carSpeed = carSpeed;
 }
}
 Car car1;

void setup(){
  size(400,400);
  car1 = new Car(20,300,40,30,5);
}

void draw(){
 
  background(125,230,150);
  fill(5,75, 30);
  ellipse(frogX, frogY, 20, 20);
  boundaries();
}

void boundaries(){
  if(frogY<10){
   frogY+=40;
  }
  if(frogY>380){
   frogY-=20;
  }
  if(frogX>380){
   frogX-=20;
  }
  if(frogX<10){
   frogX+=20;
  }
}

void keyPressed()
{
   
      if(key == CODED){
            if(keyCode == UP)
            {
                  frogY-=20;
            }
            else if(keyCode == DOWN)
            {
                  frogY+=20;
            }
            else if(keyCode == RIGHT)
            {
                  frogX+=20;
            }
            else if(keyCode == LEFT)
            {
                 frogX-=20;
            }
      }
}
