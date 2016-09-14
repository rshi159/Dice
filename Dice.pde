int number = 0;
int total = 0;
int ones = 0;
int twos = 0;
int threes = 0;
int fours = 0;
int fives = 0;
int sixes = 0;
float onesf = 0;
float twosf = 0;
float threesf = 0;
float foursf = 0;
float fivesf = 0;
float sixesf = 0;
void setup()
{
	size(720,720);
	noLoop();
}
void draw()
{
	for(int x = 30; x < 690; x = x + 60)
	{
		for(int y = 30; y < 580; y = y + 60)
		{
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
			bob.percents();
		}
	}
}
void mousePressed()
{
	redraw();
	total = 0;
	 ones = 0;
	 twos = 0;
	 threes = 0;
	 fours = 0;
	 fives = 0;
	 sixes = 0;
	 onesf = 0;
	 twosf = 0;
	 threesf = 0;
	 foursf = 0;
	 fivesf = 0;
	 sixesf = 0;
}
class Die //models one single dice cube
{
	int myX, myY, value;//variable declarations here
	Die(int x, int y) //constructor
	{
		//roll();//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		value = (int)(Math.random()*6+1);//your code here
	}
	void show()
	{
		fill(255);
		stroke(100,85);
		rect(myX, myY, 50, 50);
		if(value == 1)
		{
			fill(50);
			ellipse(myX + 25, myY + 25, 10, 10);
			number = 1;
			ones = ones + 1;
		}
		else if (value == 2) 
		{
			fill(50);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			number = 2;
			twos = twos + 1;
	    }
		else if (value == 3) 
		{
			fill(50);
			ellipse(myX + 12, myY + 12, 10, 10);
			ellipse(myX + 38, myY + 38, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			number = 3;
			threes = threes + 1;
	    }
		else if (value == 4) 
		{
			fill(50);
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX + 15, myY + 35, 10, 10);
			ellipse(myX + 35, myY + 15, 10, 10);
			number = 4;
			fours = fours + 1;
	    }
		else if (value == 5) 
		{
			fill(50);
			ellipse(myX + 12, myY + 12, 10, 10);
			ellipse(myX + 38, myY + 38, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 12, myY + 38, 10, 10);
			ellipse(myX + 38, myY + 12, 10, 10);
			number = 5;		
			fives = fives + 1;
	    }
		else if (value == 6) 
		{
			fill(50);
			ellipse(myX + 12, myY + 8, 10, 10);
			ellipse(myX + 38, myY + 42, 10, 10);
			ellipse(myX + 12, myY + 42, 10, 10);
			ellipse(myX + 38, myY + 8, 10, 10);
			ellipse(myX + 12, myY + 25, 10, 10);
			ellipse(myX + 38, myY + 25, 10, 10);
			number = 6;
			sixes = sixes + 1;
	    }
	    	/*total = total + number;
	        fill(205);
	        noStroke();
			rect(0,620,720,80);
			fill(255);
			textSize(30);
			text("The Total is: " + total,20,680);*/
    }
    void percents()
    	{
    		fill(205);
	        noStroke();
			rect(0,620,720,90);
    		total = total + number;
			fill(255);
			textSize(30);
			text("The Total is: " + total,20,680);
	        textSize(18);
			text("ones:   " + ones, 320, 650);
			text("twos:   " + twos, 320, 675); 
			text("threes: " + threes, 320, 700); 
			text("fours:  " + fours, 460, 650); 
			text("fives:  " + fives, 460, 675); 
			text("sixes:  " + sixes, 460, 700); 


		}
}

