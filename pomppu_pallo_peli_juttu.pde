float []   x;                        //    {503, 405, 403, 608, 203 };
float []   y;                       //     {50, 34, 234, 53, 234  };
float []   xd;                    //          {1, 2, 3, 4, 5};
float []   yd;
int    numberOfBalls = 50; 
int i = 1;            //   {1, 2, 3, 4, 5};
int points =0;
void setup()
{
  size (1000, 1000);
  frameRate(30);
  // background(0);
  x=new float [numberOfBalls];
  y=new float [numberOfBalls];
  xd=new float [numberOfBalls];
  yd=new float [numberOfBalls]; 



  for (int i = 0; i< numberOfBalls; i++ ) {

    x[i] = random(10, 990);
    y[i] = random(10, 990);
    xd[i] = random(-10, 10);
    yd[i] = random(-10, 10);
  }
}



void draw()
{
  background(0);
  fill (random(0, 255), random(0, 255), random(0, 255));

  for (int i=0; i < numberOfBalls; i++  ) {
    ellipse (x[i], y[i], 50, 50);
    x[i]=x[i] + xd[i];
    y[i]=y[i] + yd[i];

    if (x[i]>height-10 || x[i]<10 ) {   
      xd[i]=-xd[i];
    }

    if (y[i]>height-10 || y[i]<10 ) {   
      yd[i]=-yd[i];
   
  
    }
    textSize(23);
  text(" points: " +points , 50 , 50 );  
   textSize(100) ;
   if (points ==50)  {text
    ("Game Over" , 250 , 470);}
    
}
}
void mousePressed() {
  for (int i = numberOfBalls - 1; i >= 0; i-- ) {
    float dist = sqrt ((x[i]-mouseX)*( x[i] - mouseX) + (y[i] - mouseY)*(y[i] - mouseY));
    if (dist <= 50) {
      x[i]=-100;
      y[i]=-100;
      points++;
      
     
      break;
      
      
    }
  }
}