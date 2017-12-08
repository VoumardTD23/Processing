//set variables first
int x=5;
int y=10;



//set variables for constraint based off of the contstraint ex from 
// https://processing.org/examples/constrain.html

float mx;
float my;
int radius = 30; //effects size of the circle
int edge= 170; // effects the size of the constraint box
int inner = edge + radius; //effects the constraint boundaries

// set variables for the max and min X value of Constraint Box
//based on this https://processing.org/reference/max_.html

int xmax = 612;
int xmin = 173;
int[] values = {173, 612};
int dmax = max(values);
int dmin = min(values);

// In Void Setup, set a blue background to imitate an ocean.

void setup(){
  size(800,700);
  background(28,107,160);
  ellipseMode(RADIUS);
  rectMode(CORNERS);
  
 
}
// Draw a constraint box to create a space for the magical moving bubble
// based on this https://processing.org/examples/constrain.html
void draw() {
  
  
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx);
  }
  if (abs(mouseY-my) > 0.1) {
    my = my + (mouseY-my);
    
  }
  
  mx = constrain (mx, inner, width - inner);
  my = constrain (my, inner, height - inner);
  
  fill(255);
  rect(edge, edge, width-edge, height-edge);
  
  fill(255);
  ellipse(mx, my, radius, radius);
  
  //draw algae
  fill(111,123,12);
  ellipse(50,610,20,90);
  line(50,520,50,700);
  ellipse(300-y,620,30,90);
  line(290,530,290,700);
  ellipse(200*2,620,30,90);
  line(400,530,400,700);
  ellipse(250*2,620,30,90);
  line(500,530,500,700);
  ellipse(500,70,30,90);
  line(500,0,500,160);
  ellipse(400,70,30,90);
  line(400,0,400,160);
  ellipse(600,70,30,90);
  line(600,0,600,160);
  //display instructions for the user
  
  
    //display max and min in console based on this https://processing.org/reference/println_.html
String s = "The max X value for Constraint Box is ";

println(s);
println(dmax);

  


println(mouseX,mouseY);
  
  println("Move the mouse to move the magic bubble in the square! And use left or right click to spawn vegitation");
  String a = "The minimum X value for Constraint Box is ";
println(a);
println(dmin);
}

//Press to make algae (bubbles of algae) appear. 
void mousePressed() {

  fill(0,millis()%69,0);
  ellipse(mouseX,mouseY,50,50);
  
  
  
}
