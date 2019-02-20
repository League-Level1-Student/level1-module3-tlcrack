int birdX=500;
int birdY=500;
int birdYV=30;
int grav=1;
int pipeX=700;
void setup(){
  size(1000,1000);
}

void draw(){
  background(50, 200, 150);
  fill(100, 150, 240);
  ellipse(birdX,birdY,50,50);
  fill(200, 100, 120);
  rect(pipeX,0,200,550);
  
  
  
  rect(700,850,200,300);
  
  birdY+=grav;
  pipeX-=5;
  if(pipeX<-200){
   pipeX+=900;
  }
}

void mousePressed(){
 birdY-=birdYV;
}