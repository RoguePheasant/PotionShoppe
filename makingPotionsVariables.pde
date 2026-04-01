/*
  This script is purely to keep all the variables for makingPotions organized and how what is used when it comes to setting up
  the makingPotions Scene

*/
        // || BERRY VARIABLES || \\
// BERRY 1 \\
PImage berry1;
boolean b1in=false;//For colour change: False==no True==yes
boolean tb1=false;//For moving from tray to pot: False==stays on tray True==follows mouse
// BERRY 2 \\
PImage berry2;
boolean b2in=false;//For colour change: False==no True==yes
boolean tb2=false;//For moving from tray to pot: False==stays on tray True==follows mouse
// BERRY 3 \\
PImage berry3;
boolean tb3=false;//For colour change: False==no True==yes
boolean b3in=false;//For moving from tray to pot: False==stays on tray True==follows mouse
        // || BOTTLE VARIABLES || \\
// NO BERRY BOTTLE \\
  PImage bottleBerryNone;
// ONE BERRY BOTTLES \\
  PImage bottleBerry1;
  PImage bottleBerry2;
  PImage bottleBerry3;
// TWO BERRY BOTTLES \\
  PImage bottleBerry12;
  PImage bottleBerry13;
  PImage bottleBerry23;
// ALL BERRY BOTTLE \\
  PImage bottleBerryAll;
  boolean tBottle=false;
  boolean inBottle=false;//Used to trigger colour change of bottles only when in coloured spot
          // || BUCKET VARIABLES || \\
// EMPTY BUCKET \\
  PImage bucketFront;         
  PImage bucketBack;
// NO BERRY BUCKET \\
  PImage bucketBerryNone;
// ONE BERRY BUCKET \\
  PImage bucketBerry1;
  PImage bucketBerry2;
  PImage bucketBerry3;
// TWO BERRY BUCKET \\
  PImage bucketBerry12;
  PImage bucketBerry13;
  PImage bucketBerry23;
// ALL BERRY BUCKET \\
  PImage bucketBerryAll;
  int bucketType=0;//Used for switch expression for the bottle colour
          // || ADDITIONAL POTION VARIABLES || \\
// STIRSTICK VARIABLES \\
  PImage stirstick;
  boolean tStick=false;//Used to trigger sitrstick function
// TRAY VARIABLES \\
  PImage tray;  
// BUTTON VARIABLES \\
  PImage resetButton;  //Used to reset potion in bucket
  boolean reset=false;
  PImage exitButton;   //Used to exit potion making window
  int scene=1; // used to switch to scene. 1==shop,2==potions 3==info
  float an=0;//spin rotation for button
// BAG VARIABLES \\
  PImage bagClosed;
  PImage bagOpen;
  boolean open=false;//false==show closed bag, true==show open bag when potion brought over
