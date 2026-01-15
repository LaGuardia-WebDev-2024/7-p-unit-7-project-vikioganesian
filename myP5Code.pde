

Let angle = 0;

//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
   
   colorMode(HSB);
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
var torsoL = 50
var legLXU = 515
var legLXD = 505
var legLRYU = 245
var legRX = 527
var legRXD = 540
var legLRYD = 295
var headX = 495;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

  
//Skateboard
strokeWeight (1);
fill(0,0,0)
ellipse (leftwheelX,wheelY,wheelSize, wheelSize);
ellipse (rightwheelX,wheelY,wheelSize,wheelSize);
fill(boardX / 3, 90, 200)
ellipse (boardX,boardY,boardW,boardL);

//body

strokeWeight(13);
line (legLXU,legLRYU,legLXD,legLRYD);
line (legRX,legLRYU,legRXD,legLRYD);

strokeWeight(13);
line (legLXU - 10,legLRYU - 40,legLXD -20,legLRYD -50);
line (legRX + 10,legLRYU - 40,legRXD + 20,legLRYD -50);

strokeWeight (1);
fill (204, 160, 94)
rect(torsoX,torsoY,torsoW,torsoL);


//head 
textSize (44)
text ('👨🏻‍🦱',headX,196);




//animating

leftwheelX = leftwheelX -3
rightwheelX = rightwheelX -3
boardX = boardX -3
torsoX = torsoX -3
legLXU = legLXU - 3
legLXD = legLXD -3
legRX = legRX -3
legRXD = legRXD -3
headX = headX -3




if(leftwheelX < 0) {
  leftwheelX = 560
  rightwheelX = 485
  boardX = 522
  torsoX = 505
  legLXU = 515
legLXD = 505
legLRYU = 245
legRX = 527
legRXD = 540
headX = 495;


}




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
