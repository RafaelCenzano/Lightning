int startX = 150;
int endX = 150;
int startY = 20;
int endY = 20;

void setup()
{
  size(300,300);
  strokeWeight(8);
  background(36, 33, 33);
}

void draw(){
	while(startY < 300 || startX < 300 || startX > 0){
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
	}
}
