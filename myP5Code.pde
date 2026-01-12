//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var wheelSize = 10
var leftwheelX = 560
var rightwheelX = 485
var wheelY = 310
var boardX = 522
var boardY = 299
var boardL = 15
var boardW = 90
var torsoX = 505
var torsoY = 200
var torsoW = 30
var torsoL = 50;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
//Skateboard
fill(0,0,0)
ellipse (leftwheelX,wheelY,wheelSize, wheelSize);
ellipse (rightwheelX,wheelY,wheelSize,wheelSize);
fill(255, 0, 115)
ellipse (boardX,boardY,boardW,boardL);

//human
fill (0,0,0)
rect(torsoX,torsoY,torsoW,torsoL);
textSize (40)
text ('👨🏻‍🦱',500,180);


  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
