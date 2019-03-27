int frogX = 200;
int frogY = 375;
class Car {
  int carX;
  int carY;
  int carLength;
  int carWidth;
  int carSpeed;

  Car(int carX, int carY, int carLength, int carWidth, int carSpeed) {
    this.carX = carX;
    this.carY = carY;
    this.carLength = carLength;
    this.carWidth = carWidth;
    this.carSpeed = carSpeed;
  }
  void display() 
  {
    fill(100, 0, 200);
    rect(carX, carY, carLength, carWidth);
  }
  void carLeft() {
    carX -= carSpeed;
    if (carX<-20) {
      carX = 400;
    }
  }
  void carRight() {
    carX += carSpeed;
    if (carX>420) {
      carX = 0;
    }
  }
  void setSpeed(int speed) {
    carSpeed = speed;
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carWidth;
  }
}
Car car1;
Car car2;
Car car3;
Car car4;
void setup() {
  size(400, 400);
  car1 = new Car(20, 300, 40, 30, 10);
  car2 = new Car(325, 260, 40, 30, 5);
  car3 = new Car(100, 100, 40, 30, 15);
  car4 = new Car(200, 150, 40, 30, 5);
}

void draw() {
if(frogY<0){
 println("You winned!"); 
 stop();
}
  background(125, 230, 150);
  fill(5, 75, 30);
  ellipse(frogX, frogY, 20, 20);
  boundaries();
  car4.setSpeed( (int) random(15) );
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car1.carLeft();
  car2.carRight();
  car3.carRight();
  car4.carLeft();
    if(intersects(car1)){
     stop(); 
    }
    if(intersects(car2)){
     stop(); 
    }
    if(intersects(car3)){
     stop(); 
    }
    if(intersects(car4)){
     stop(); 
    }
}

boolean intersects(Car car) {
  if ((frogY > car.getY() && frogY < car.getY()+20) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
  {
    return true;
  } else 
  {
    return false;
  }
}

void boundaries() {
  if (frogY<10) {
    frogY+=40;
  }
  if (frogY>380) {
    frogY-=20;
  }
  if (frogX>380) {
    frogX-=20;
  }
  if (frogX<10) {
    frogX+=20;
  }
}

void keyPressed()
{

  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY-=20;
    } else if (keyCode == DOWN)
    {
      frogY+=20;
    } else if (keyCode == RIGHT)
    {
      frogX+=20;
    } else if (keyCode == LEFT)
    {
      frogX-=20;
    }
  }
}