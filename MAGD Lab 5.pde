void setup(){
  size(500,500);
  textSize(30);
  
}



void draw(){
  background(#42f4bc);
  fill(0,102,153);
  text("Select A World!",125,70);
  fill(#035c82);
  rect(200,165,200,85);
  fill(0);
  text("FF14 1.0",235,215);
  fill(#29d14b);
  ellipse(150,400,150,150);
  fill(0,102,153);
  text("FF14 ARR",80,400);
  //based off of the mousePressed example you gave us in class
  if(mousePressed){
    if(mouseX>200 && mouseX <400 && mouseY>165 && mouseY <250){
      noFill();
      text("ACCESS DENIED SERVERS OFFLINE!", 5,280);
    }
  }
 if(mousePressed){
   if(mouseX>120 && mouseX<300 && mouseY>300 && mouseY <450){
     noFill();
     text("ENJOY YOUR NEW WORLD", 90, 280);
}
 }
  
}
