//setup variables and free points that may or maynot be needed for a bouncing ball
// project based off of this code https://processing.org/examples/bounce.html
float xPosition, yPosition;
float xSpeed = 2.8;
float ySpeed = 2.2;
float w, h;
int rad = 60;
int xdirection = 1;
int ydirection =1;
int i =0;


void setup(){
  size(640,360);
  frameRate(30);
  // using a while loop to set the color of the background!
  while(i<10){
    background(30,i,i);
    i = i +17;
  }
  
  xPosition = width/2;
  yPosition = height/2;
}


void draw(){
 
  // set the speed for the ball bouncing
  
 xPosition= xPosition + (.5 * xdirection); 
 yPosition = yPosition + (.5 * ydirection);
 //set positions for ball bounce.
 if (xPosition > width-rad ) {
   xdirection *= -1;
  
 }
  if (yPosition > height-rad){
    ydirection *= -1;
  
  }
 if (keyPressed){
   //change the color of the ellipse thus changing the color of the streak left from the ball.
   fill(0,17,millis()%250);
   ellipse(mouseX,mouseY,20,20);
   
 }
 //set the bound for x values for ball to bounce off of.
  if (xPosition < 90) {
    xdirection *=-1;
  }
 //set the bound for y values for ball to bounce off of.
  if (yPosition < 90) {
    ydirection *= -1;
  }
  ellipse (xPosition,yPosition,40,40);
  

}

void mousePressed(){
  background(0,50,millis()%200);
}
