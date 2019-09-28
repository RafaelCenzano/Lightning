// Create variables to hold cordinate points of lightning bolts
int startX = 150;
int endX = 150;
int startY = 150;
int endY = 150;

void setup(){

    // Create 300 by 300 canvas
    size(300,300);

    // Set background to dark color
    background(36, 33, 33);

    // Set line width for shapes and lines
    strokeWeight(5);

    // Fill shapes with background color
    fill(36, 33, 33);

    // Set line color for new rect
    stroke(51, 48, 48);
    rect(145, 150, 10, 150);

    // Set line color for new rect
    stroke(94, 90, 90);
    rect(50, 50, 200, 200);
}

void draw(){
	startX = endX;
	startY = endY;
	System.out.println(startY);
	System.out.println(startX);
	endX = endX + (int)(Math.random() * 30) - 15;
	endY = endY + (int)(Math.random() * 15) + 1;
	if(startY < 250 - 5 && startX < 250 - 5 && startX > 50 + 5 && startY > 50 + 5){
		int randColorPicker = (int)(Math.random() * 5) + 1;
		if (randColorPicker == 1){
			stroke(0, 123, 148);
		}else if (randColorPicker == 2){
			stroke(143, 0, 45);
		}else if (randColorPicker == 3){
			stroke(0, 110, 11);
		}else if (randColorPicker == 4){
			stroke(153, 150, 0);
		}else {
			stroke(65, 0, 130);
		}
		line(startX, startY, endX, endY);
		delay(500);
	}else {
		endX = 150;
		endY = 150;
	}
}
