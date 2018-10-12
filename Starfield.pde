//your code here
NormalParticle [] field;
void setup()
{
	//your code here
	size(500,500);
	field = new NormalParticle[130];
	for(int i = 0; i < field.length; i++){
		field[i] = new NormalParticle();
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < field.length; i++){
		field[i].move();
		field[i].show();
	}
}
class NormalParticle
{
	//your code here
	double myX, myY, myAngle, mySpeed, speedX, speedY;
	int radX, radY;
	void move(){
		if(myX <= 0 || myX > 500){
			myX = width/2;
			myY = height/2;
			myAngle = (Math.random()*(2*Math.PI));
			mySpeed = ((Math.random()*8.25)-5);
			speedX = Math.cos(myAngle)*mySpeed;
			speedY = Math.sin(myAngle)*mySpeed;
		}
		if(myY <= 0 || myY > 500){
			myX = width/2;
			myY = height/2;
			myAngle = (Math.random()*(2*Math.PI));
			mySpeed = ((Math.random()*8.25)-2);
			speedX = Math.cos(myAngle)*mySpeed;
			speedY = Math.sin(myAngle)*mySpeed;
		}
		myX += speedX;
		myY += speedY;
	}
	void show(){
		ellipse((float)myX, (float)myY,radX,radY);
	}
	public NormalParticle(){
		radX = 10;
		radY = 10;
		myX = width/2;
		myY = height/2;
		myAngle = (Math.random()*(2*Math.PI));
		mySpeed = ((Math.random()*8.25));
		speedX = Math.cos(myAngle)*mySpeed;
		speedY = Math.sin(myAngle)*mySpeed;
	}
}
interface Particle
{
	//your code here

	
}
class OddballParticle //uses an interface
{
	//your code here
	// double oddX, oddY, oddAngle, oddSpeed, oddSX, oddSY;
	// int oddTime;
	// void move(){

	// }
	// void show(){

	// }
}
class JumboParticle //uses inheritance
{
	//your code here
}
