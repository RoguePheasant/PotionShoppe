/*
  This script is purely to keep all the functions for makingPotions organized and how what is used when it comes to setting up
  the makingPotions Scene

*/
void potionMaking()// Function to call aspects of the shopCounter scene in draw
{
  stroke(0);
  background(206,177,240);
  potBack();
  tray();
  stirStick();
  stirStickMove();
  stir();
  potFront();
  bottle();
  bagSwitch();
  bag();
  bottle();
  bottleMove();
  berryMoves1();
  berryMoves2();
  resetButton();
  exitButton();
}

void loadBerry()// Loads images of all variations of berries for the scene
{
  berry1=loadImage("berry1.png");
  berry2=loadImage("berry2.png");
  berry3=loadImage("berry3.png");
   
}
void loadBottle()// Loads images of all variations of bottles for the scene
{
// NO BERRY BOTTLE \\
bottleBerryNone=loadImage("bottleBerryNone.png");
bottleBerryNone.resize(125,300);
// ONE BERRY BOTTLES \\
bottleBerry1=loadImage("bottleBerry1.png");
bottleBerry1.resize(125,300);
bottleBerry2=loadImage("bottleBerry2.png");
bottleBerry2.resize(125,300);
bottleBerry3=loadImage("bottleBerry3.png");
bottleBerry3.resize(125,300);
// TWO BERRY BOTTLES \\
bottleBerry12=loadImage("bottleBerry12.png");
bottleBerry12.resize(125,300);
bottleBerry13=loadImage("bottleBerry13.png");
bottleBerry13.resize(125,300);
bottleBerry23=loadImage("bottleBerry23.png");
bottleBerry23.resize(125,300);
// ALL BERRY BOTTLE \\
bottleBerryAll=loadImage("bottleBerryAll.png");
bottleBerryAll.resize(125,300);
}
void loadBucket()// Loads images of all variations of buckets for the scene
{
// EMPTY BUCKET \\
bucketFront=loadImage("bucketFront.png");
bucketBack=loadImage("bucketBack.png");
bucketFront.resize(2*350,2*350);
bucketBack.resize(2*350,2*350);
// NO BERRY BUCKET \\
bucketBerryNone=loadImage("bucketBerryNone.png");
bucketBerryNone.resize(685,300);
// ONE BERRY BUCKET \\
bucketBerry1=loadImage("bucketBerry1.png");
bucketBerry1.resize(685,300);
bucketBerry2=loadImage("bucketBerry2.png");
bucketBerry2.resize(685,300);
bucketBerry3=loadImage("bucketBerry3.png");
bucketBerry3.resize(685,300);
// TWO BERRY BUCKET \\
bucketBerry12=loadImage("bucketBerry12.png");
bucketBerry12.resize(685,300);
bucketBerry13=loadImage("bucketBerry13.png");
bucketBerry13.resize(685,300);
bucketBerry23=loadImage("bucketBerry23.png");
bucketBerry23.resize(685,300);
// ALL BERRY BUCKET \\
bucketBerryAll=loadImage("bucketBerryAll.png");
bucketBerryAll.resize(685,300);
}
void loadItems()// Loads images of the stirstick, tray, buttons, and bags
{
// STIRSTICK VARIABLES \\
stirstick=loadImage("stirstick.png");
stirstick.resize(100,352);
// TRAY VARIABLES \\
tray=loadImage("tray.png");  
// BUTTON VARIABLES \\
resetButton=loadImage("resetButton.png");  
exitButton=loadImage("exitButton.png");   
// BAG VARIABLES \\
bagClosed=loadImage("bagClosed.png");
bagClosed.resize(450,450);
bagOpen=loadImage("bagOpen.png");
bagOpen.resize(450,450);
}

void potBack()//Pot setup
{
  imageMode(CENTER);
  image(bucketBack,width/2,height/2);
}
void potFront()//Used to change potion colour depending on berries added
{
  imageMode(CENTER);
  ellipseMode(RADIUS);
  fill(255);
  image(bucketFront,width/2,height/2);//ellipse(width/2,height/2,350,350);
  if(b1in==true && b2in==false && b3in==false)//berry1 only
  {
    tint(255,155);
    image(bucketBerry1,width/2,height/2-90);
    noTint();
    bucketType=1;
  } 
  else if(b1in==false && b2in==true && b3in==false)//berry2 only
  {
    tint(255, 155);
    image(bucketBerry2,width/2,height/2-90);
    noTint();
    bucketType=2;
  } 
  else if(b1in==false && b2in==false && b3in==true)//berry 3 only
  {
    tint(255,155);
    image(bucketBerry3,width/2,height/2-90);
    noTint();
    bucketType=3;
  } 
  else if(b1in==true && b2in==true && b3in==false)//berry1 and 2 only
  {
    tint(255,155);
    image(bucketBerry12,width/2,height/2-90);
    noTint();
    bucketType=4;
  } 
  else if(b1in==true && b2in==false && b3in==true)//berry1 and 3 only
  {
    tint(255,155);
    image(bucketBerry13,width/2,height/2-90);
    noTint();
    bucketType=5;
  }
  else if(b1in==false && b2in==true && b3in==true)//berry2 and 3 only
  {
    tint(255,155);
    image(bucketBerry23,width/2,height/2-90);
    noTint();
    bucketType=6;
  } 
  else if(b1in==true && b2in==true && b3in==true)//all berries
  {
    tint(255,155);
    image(bucketBerryAll,width/2,height/2-90);
    noTint();
    bucketType=7;
  }
  else if(reset==true)//when reset button pressed
  {
    tint(255,155);
    image(bucketBerryNone,width/2,height/2-90);
    noTint();
    bucketType=0;
  }
   else//returns to empty just in case of unspecified case. Haven't encountered one yet
  {
    tint(255,155);
    image(bucketBerryNone,width/2,height/2-90);
    noTint();
    bucketType=0;
  }
}

void tray()//Tray setup function
{
  imageMode(CENTER);
  image(tray,width/8,550);
}

void stirStick()// Function to control movement of stirstick
{
  imageMode(CENTER);
  if(tStick==false)
  { 
    image(stirstick,width/8+300,750);
  }
  else if(tStick==true)
  {
    tint(255,100);
    image(stirstick,width/8+300,750);
    noTint();
  }
  image(stirstick,width/8+300,750);
  if(mousePressed==true && mouseButton==LEFT && pmouseX>=514 && pmouseX<=566 && pmouseY>=570 && mouseY<=914)
  {
    tStick=true;
  }
  else if(mousePressed==true && mouseButton==RIGHT && pmouseX>=514 && pmouseX<=566 && pmouseY>=570 && mouseY<=914)
  {
    tStick=false;
  }
  else if(tb1==true|| tb2==true || tb3==true)
  {
    tStick=false;
  }
  else if(tBottle==true || reset==true ||(pmouseX<=1943 && pmouseX>=1493 && pmouseY<=916 && pmouseY>=466))
  {
    tStick=false;
  }
  else{}
}
void stirStickMove()//Used to make stirstick follow user's mouse
{
  if(tStick==true)
  {
    image(stirstick,pmouseX,pmouseY);
  }
  else{}
}
void stir()//Function that allows bubbles to form when mixing
{
  if(tStick==true && pmouseX>=740 && pmouseX<=1189 && pmouseY>=233 && pmouseY<=528)
  {
        switch(bucketType)
    {
      case 0:
        fill(164,197,198,90);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 1:
        fill(255,173,8,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 2:
        fill(142,6,42,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 3:
        fill(66,76,178,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 4:
        fill(255,70,8,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 5:
        fill(36,188,131,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 6:
        fill(107,4,137,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      case 7:
        fill(77,4,142,50);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
      default:
        fill(164,197,198,90);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),3,3);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),5,5);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),7,7);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),15,15);
        ellipse(pmouseX+(random(-50,50)),pmouseY+(random(75,176)),10,10);
        noFill();
        break;
    }
  }
  else{}
}

void berryMoves1()//Function to regulate if a berry has been picked up and which berry is choosen
{
  imageMode(CENTER);
  berry1.resize(125,125);
  berry2.resize(125,125);
  berry3.resize(125,125);
  image(berry1,195,423);
  image(berry2,329,530);
  image(berry3,183,645);

  if(mousePressed==true&&pmouseX<=395 && pmouseX>=187 && pmouseY<=483 && pmouseY>=361)
  {
    tb1=true;
    tb2=false;
    tb3=false;
  } 
  else if(mousePressed==true && pmouseX<=363 && pmouseX>=171 && pmouseY>=490 && pmouseY<567)
  {
    tb1=false;
    tb2=true;
    tb3=false;
  } 
  else if(mousePressed==true && pmouseX<=246 && pmouseX>=118 && pmouseY>=616 && pmouseY<706)
  {
    tb1=false;
    tb2=false;
    tb3=true;
  } 
  else{}
}


void berryMoves2()// Function to manage user interactivy with the selected berry based on berryMoves1()
{
  if(tb1==true)
  {
    image(berry1, pmouseX, pmouseY);
  } 
  else if(tb2==true)
  {
    image(berry2, pmouseX, pmouseY);
  } 
  else if (tb3==true)
  {
    image(berry3, pmouseX, pmouseY);
  } 
  else{}
  if(mousePressed==true && tb1==true && pmouseX>=659 && pmouseX<=1260 && pmouseY>=240 && pmouseY<=824)
  {
    tb1=false;
    b1in=true;
  } 
  else if (mousePressed==true && tb2==true && pmouseX>=659 && pmouseX<=1260 && pmouseY>=240 && pmouseY<=824)
  {
    tb2=false;
    b2in=true;
  } 
  else if (mousePressed==true && tb3==true && pmouseX>=659 && pmouseX<=1260 && pmouseY>=240 && pmouseY<=824)
  {
    tb3=false;
    b3in=true;
  } 
  else{}
}
void resetButton()// Used to reset colours in potion bucket
{
  imageMode(CENTER);
  image(resetButton, width/2, 733);
  if(mousePressed==true && pmouseX<=982 && pmouseX>=932 && pmouseY<=755 && pmouseY>=705)
  {
    reset=true;
    b1in=false;
    b2in=false;
    b3in=false;
    tBottle=false;
    inBottle=false;
  } 
  else
  {
    reset=false;
  }
}

void exitButton()// Used to switch back to the shopCounter scene
{
  imageMode(CENTER);
  image(exitButton,187,57);
  if (mousePressed==true && pmouseX<=207 && pmouseX>=160 && pmouseY<=76 && pmouseY>=32)
  {
    scene=1;
  } 
  else
  {
    //potions=true;
  }
}
void bag()//Used to determine if bag is open or closed depending on user interaction
{
  imageMode(CENTER);
  if (open==false)
  {
    image(bagClosed, 1715, 692);
  } else if (open==true)
  {
    image(bagOpen, 1715, 692);
  } else {
  }
}

void bagSwitch()//Used to switch between open and closed bag images
{
  if (pmouseX<=1943 && pmouseX>=1493 && pmouseY<=916 && pmouseY>=466)
  {
    open=true;
  } else
  {
    open=false;
  }
}

void bottle()//Function used to determine if user interacted with bottle
{
  imageMode(CENTER);
  image(bottleBerryNone, 1642, 233);
  if (mousePressed==true && pmouseX<=1702 && pmouseX>=1580 && pmouseY<=373 && pmouseY>=76)
  {
    tBottle=true;
  }
  else if (tBottle==true && pmouseX<=1943 && pmouseX>=1493 && pmouseY<=916 && pmouseY>=466)
  {
    tBottle=false;
  }
  else 
  {}
  if (tBottle==true && pmouseX>=659 && pmouseX<=1260 && pmouseY>=240 && pmouseY<=824)
  {
    inBottle=true;
  } 
  else{}
}
void bottleMove()//Function to manage user interaction with bottle once selected
{
  if (tBottle==true && inBottle==false)
  {
    image(bottleBerryNone, pmouseX, pmouseY);
  } 
  else if (tBottle==true && inBottle==true)
  {
    switch(bucketType)
    {
    case 0:
      image(bottleBerryNone, pmouseX, pmouseY);
      break;
    case 1:
      image(bottleBerry1, pmouseX, pmouseY);
      break;
    case 2:
      image(bottleBerry2, pmouseX, pmouseY);
      break;
    case 3:
      image(bottleBerry3, pmouseX, pmouseY);
      break;
    case 4:
      image(bottleBerry12, pmouseX, pmouseY);
      break;
    case 5:
      image(bottleBerry13, pmouseX, pmouseY);
      break;
    case 6:
      image(bottleBerry23, pmouseX, pmouseY);
      break;
    case 7:
      image(bottleBerryAll, pmouseX, pmouseY);
    }
  }
  else if(pmouseX<=1943 && pmouseX>=1493 && pmouseY<=916 && pmouseY>=466)
  {
    tBottle=false;
    inBottle=false;
  } 
  else{}
 }
