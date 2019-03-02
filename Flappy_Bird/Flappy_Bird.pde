int birdX=500;
int birdY=500;
int birdYV=100;
int grav=5;
int pipeX=700;
int upperPipeHeight = (int) random(100, 550);
int PipeGap = 200;
int LowerPHeight = 700;
int  score = 0;
void setup(){
  size(1000,1000);
}

void draw(){
    
   
  background(50, 200, 150);
  fill(100, 150, 240);
  ellipse(birdX,birdY,50,50);
  fill(200, 100, 120);
  rect(pipeX,0,200,upperPipeHeight);
   
   text(score,10, 10);
  
  
  rect(pipeX,LowerPHeight,200,900);
  
  birdY+=grav;
  pipeX-=5;
teleportPipes();
if(intersectsPipes()==true){
  exit();
}
if(birdY<0||birdY>1000){
exit();  
}

}

void mousePressed(){
 birdY-=birdYV;
}


void teleportPipes(){
    if(pipeX<-200){
   pipeX+=1200;
   upperPipeHeight = (int) random(100, 600); 
   LowerPHeight = upperPipeHeight + PipeGap;
   score +=1;
  }
  
}
boolean intersectsPipes() { 
     if (birdY - 25 < upperPipeHeight && birdX + 25 > pipeX && birdX - 25 < (pipeX+200)){
          return true; }
     else if (birdY>LowerPHeight && birdX > pipeX && birdX < (pipeX+200)) {
          return true; }
     else { return false; }
}