
PImage corn;
PImage reggie;
PShape boxb1;
PShape boxb2;
PShape boxb3;
PShape bird1;
PShape bird2;

PFont infoBox;
void infoScene()
{
  imageMode(CENTER);
  an+=0.015;
  background(193, 213, 255);
  if(mousePressed==true)
  {
    println(pmouseX,pmouseY);
  }
  else{}
  //Berry1 Box
  pushMatrix();
  noStroke();
  fill(0,45);
  boxb1=createShape(BOX, 150);
  boxb1.setTexture(berry1);
  translate(width/6, height/4, -height/4);
  rotateY(an);
  shape(boxb1, 0, 0, 150, 150);
  popMatrix();
  
  //Berry2 box
  pushMatrix();
  fill(0,45);
  boxb2=createShape(BOX, 150);
  boxb2.setTexture(berry2);
  translate(width/6+(2*(width/6)), height/4, -height/4);
  rotateY(an);
  shape(boxb2, 0, 0, 150, 150);
  popMatrix();
  
  //Berry3 box  
  pushMatrix();
  fill(0,45);
  boxb3=createShape(BOX, 150);
  boxb3.setTexture(berry3);
  translate(width/6+(4*(width/6)), height/4, -height/4);
  rotateY(an);
  shape(boxb3, 0, 0, 150, 150);
  popMatrix();

  //Bird1 box  
  pushMatrix();
  fill(0,45);
  bird1=createShape(BOX, 150);
  bird1.setTexture(corn);
  translate(width/6+(width/6), height/4+height/4, -height/4);
  rotateY(an);
  shape(bird1, 0, 0, 150, 150);
  popMatrix();


  //Bird2 box  
  pushMatrix();
  fill(0,45);
  bird2=createShape(BOX, 150);
  bird2.setTexture(reggie);
  translate(width/6+(3*(width/6)), height/4+height/4, -height/4);
  rotateY(-an);
  shape(bird2, 0, 0, 150, 150);
  popMatrix();
  
  //InfoButton
  pushMatrix();
  noFill();
  stroke(171,9,222,90);
  translate(width, height-height/6, -height/4);
  rotateY(-an);
  sphere(50);
 
  popMatrix();
  pushMatrix();
  fill(0,45);
  translate(width, height-height/6, -height/4);
  rotateY(-an);
  sphere(75);
  popMatrix();
  backBall();
  fill(0,45);
  displayMessagebox();
  


}
void load()
{
  berry1=loadImage("berry1.png");
  berry2=loadImage("berry2.png");
  berry3=loadImage("berry3.png");
  corn=loadImage("corn.png");
  reggie=loadImage("reggie.png");
}

void fontLoading()
{
  textAlign(CENTER);
  infoBox=createFont("BodoniMT-Italic-48.vlw",36);

}
void displayMessagebox()
{
//b1 = 441,323
  if(pmouseX<=491 && pmouseX>=391 && pmouseY<=373 && pmouseY>=273)
  {
    pushMatrix();
    noStroke();
    fill(255);
    boxb1=createShape(BOX, 150);
    boxb1.setTexture(berry1);
    translate(width/6, height/4, -height/4);
    rotateY(an);
    shape(boxb1, 0, 0, 150, 150);
    popMatrix();
    textFont(infoBox);
    text("Honey Berry. Gets the name from the honeycomb like design. ",width/2,height/2+height/3);
  }
  else if(pmouseX<=1002 && pmouseX>=902 && pmouseY<=364 && pmouseY>=264)
  {
    pushMatrix();
  fill(255);
  boxb2=createShape(BOX, 150);
  boxb2.setTexture(berry2);
  translate(width/6+(2*(width/6)), height/4, -height/4);
  rotateY(an);
  shape(boxb2, 0, 0, 150, 150);
  popMatrix();
    textFont(infoBox);
    text("Rednanasa. Totally not named after replacing the b in bananas with red.",width/2,height/2+height/3);
  }
  else if(pmouseX<=1546 && pmouseX>=1446 && pmouseY<=368 && pmouseY>=268)
  {
    pushMatrix();
  fill(255);
  boxb3=createShape(BOX, 150);
  boxb3.setTexture(berry3);
  translate(width/6+(4*(width/6)), height/4, -height/4);
  rotateY(an);
  shape(boxb3, 0, 0, 150, 150);
  popMatrix();
    textFont(infoBox);
    text("Moon Ovals. And this is where the creative train fell off the tracks... naming things are hard!",width/2,height/2+height/3);
  }
  else if(pmouseX<=735 && pmouseX>=635 && pmouseY<=572 && pmouseY>=472)
  {
    pushMatrix();
  fill(255);
  bird1=createShape(BOX, 150);
  bird1.setTexture(corn);
  translate(width/6+(width/6), height/4+height/4, -height/4);
  rotateY(an);
  shape(bird1, 0, 0, 150, 150);
  popMatrix();
    textFont(infoBox);
    text("It's Cornelius! That's the pheasants who debugs all of Candace's codes!",width/2,height/2+height/3);
  }
  else if(pmouseX<=1260 && pmouseX>=1160 && pmouseY<=584 && pmouseY>= 484)
  {
     pushMatrix();
  fill(255);
  bird2=createShape(BOX, 150);
  bird2.setTexture(reggie);
  translate(width/6+(3*(width/6)), height/4+height/4, -height/4);
  rotateY(-an);
  shape(bird2, 0, 0, 150, 150);
  popMatrix();
    textFont(infoBox);
    text("That's Reginald. He's the pheasant behind all the artwork for Candace's code!",width/2,height/2+height/3);
  }
  else
  {
    fill(0,45);
    textFont(infoBox);
    text("Hover over one of the information cubes with your mouse to learn more,"
        +"\n"+"or click the purple orb to go back to the store",width/2,height/2+height/3);
  }
}

void backBall()
{
  if(mousePressed==true && pmouseX<=1868 && pmouseX>=1668 && pmouseY<=868 && pmouseY>=763)
  {
    scene=1;
  }
  else{}

}
  
  
