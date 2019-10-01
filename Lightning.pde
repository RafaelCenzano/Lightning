// Create variables to hold cordinate points of lightning bolts
int startX = 300;
int endX = 300;
int startY = 300;
int endY = 300;
int multiplyerX = 1;
int multiplyerY = 1;
int sideWays = 0;

int startX1 = 300;
int endX1 = 300;
int startY1 = 300;
int endY1 = 300;
int multiplyerX1 = 1;
int multiplyerY1 = 1;
int sideWays1 = 0;

// Setup
void setup(){

    // Create 300 by 300 canvas
    size(600,600);

    // Set setting
    resetSetting();
}

// Set Setting
void resetSetting(){

	// Set background to dark color
    background(36, 33, 33);

	// Set line width for shapes
    strokeWeight(5);

    // Fill shapes with background color
    fill(36, 33, 33);

    // Set line color for new rect
    stroke(94, 90, 90);
    rect(50, 50, 500, 500);

    stroke(191, 182, 219);
    ellipse(300, 300, 40, 40);

}

// Calculate cordinate values for minor movement direction
int directionMinor(int previousMinor, int multiplyerMinor){
	return previousMinor + ((int)(Math.random() * 15) + 1) * multiplyerMinor;
}

// Calculate cordinate values for major movement direction
int directionMajor(int previousMajor,int multiplyerMajor){
	return previousMajor + ((int)(Math.random() * 30) - 15) * multiplyerMajor;
}

// Check if values are within Box
boolean withinBox(int pointX, int pointY){
	return (pointY < 550 - 15 && pointX < 550 - 15 && pointX > 50 + 15 && pointY > 50 + 15);
}

// Check if values are within middle 50 units
boolean withinMiddle(int pointX, int pointY){
	return (pointY < 350 && pointY > 250 && pointX < 350 && pointX > 250);
}

// Draw loop function
void draw(){

	// Set start variables equal to end variables to create new line segment of lightning
    startX = endX;
	startY = endY;
	startX1 = endX1;
	startY1 = endY1;

	// Create random new points lightning will extend to
	if (sideWays == 0){
		// Up or Down
		endX = directionMajor(endX, multiplyerX);
		endY = directionMinor(endY, multiplyerY);
	} else {
		// Right or Left
		endX = directionMinor(endX, multiplyerX);
		endY = directionMajor(endY, multiplyerY);
	}
	if (sideWays1 == 0){
		// Up or Down
		endX1 = directionMajor(endX1, multiplyerX1);
		endY1 = directionMinor(endY1, multiplyerY1);
	} else {
		// Right or Left
		endX1 = directionMinor(endX1, multiplyerX1);
		endY1 = directionMajor(endY1, multiplyerY1);
	}

	// Check that lightning will stay inside of plasma rectangle
	if (withinBox(startX, startY)){

		// Draw new line segment
		stroke(59, 17, 191);
		strokeWeight(7);
		line(startX, startY, endX, endY);


	} 

	if(withinBox(startX1, startY1)){

		// Draw new line segment
		stroke(59, 17, 191);
		strokeWeight(7);
		line(startX1, startY1, endX1, endY1);
	}

	// Reset setting
	if(!withinBox(startX, startY) && !withinBox(startX1, startY1)){

		// reset settings
    	resetSetting();

    	// reset start points
    	endX = 300;
        endY = 300;
        endX1 = 300;
        endY1 = 300;

    	// Random direction for next line
    	int randMultiplyer = (int)(Math.random() * 4) + 1;

    	// Set multipliers and direction of Lightning bolt based on random number
    	if (randMultiplyer == 1){
    		multiplyerY = 1;
    		multiplyerX = 1;
    		sideWays = 0;
    	}else if (randMultiplyer == 2){
    		multiplyerY = 1;
    		multiplyerX = 1;
    		sideWays = 1;
    	}else if (randMultiplyer == 3){
    		multiplyerY = 1;
    		multiplyerX = -1;
    		sideWays = 1;
    	}else if (randMultiplyer == 4){
    		multiplyerY = -1;
    		multiplyerX = -1;
    		sideWays = 0;
    	}else{
    		System.out.println("Error Occured");
    	}

    	// Random direction for next line
    	int randMultiplyer1 = (int)(Math.random() * 4) + 1;

    	// Set multipliers and direction of Lightning bolt based on random number
    	if (randMultiplyer1 == 1){
    		multiplyerY1 = 1;
    		multiplyerX1 = 1;
    		sideWays1 = 0;
    	}else if (randMultiplyer1 == 2){
    		multiplyerY1 = 1;
    		multiplyerX1 = 1;
    		sideWays1 = 1;
    	}else if (randMultiplyer1 == 3){
    		multiplyerY1 = 1;
    		multiplyerX1 = -1;
    		sideWays1 = 1;
    	}else if (randMultiplyer1 == 4){
    		multiplyerY1 = -1;
    		multiplyerX1 = -1;
    		sideWays1 = 0;
    	}else{
    		System.out.println("Error Occured");
    	}
	}

	if (withinMiddle(startX, startY) || withinMiddle(startX1, startY1)){

			// Create middle circle
			stroke(191, 182, 219);
			strokeWeight(5);
    		ellipse(300, 300, 40, 40);
		
	}
}
