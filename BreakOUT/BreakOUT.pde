//Breackout 
//Madelyn Chong
/////////////////////// VIDEO 8J

//brick Variables
int []x;
int []y;
int brickd;
int n ;

//mode framework;
int mode;
final int INTRO =1;
final int GAME= 2;
final int  PAUSE =3 ;
final int GAMEOVER=4;

float px, py, pd, bx, by, bd, vx, vy;

//keyboard variables 
boolean rightkey, leftkey; 

void setup() {
  brickd = 50;
  n = 100;
  x = new int [n];
  y = new int [n];

  x [0] = 100;
  y [0] = 100;

  x [1] = 400;
  y [1] = 100;

  x [2] = 700;
  y [2] = 100;


  size (800, 800); 
  mode= GAME;/////////////////-----------------------------------

  // initialize paddles
  px = width/2;
  py = height;
  pd=  100;
  vx = 0;
  vy = 1;
  //initi alize ball
  bx = width/2;
  by= height-200;
  bd= 10;

  //initialize keyboard variables
  rightkey= leftkey = false;
}

void draw() {
  if ( mode== INTRO) {
    intro();
  } else if ( mode== GAME) {
    game();
  } else if (mode== PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else { 
    println( "Mode error in draw:" + mode);
  }
}
