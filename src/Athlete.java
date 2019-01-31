


	public class Athlete {

	     static int nextBibNumber;
	     static String raceLocation = "New York";
	     static String raceStartTime = "9.00am";

	     String name;
	     int speed;
	     int bibNumber;
	     	
	Athlete (String name, int speed){
	     this.name = name;
	     this.speed = speed;
	     nextBibNumber += 1;
	     bibNumber = nextBibNumber;
	}

	public static void main(String[] args) {
	     //create two athletes      //print their names, bibNumbers, and the location of their race. }
		
		Athlete triath = new Athlete("jim", 4000);
		System.out.println(triath.name);
		System.out.println(triath.raceLocation);
		System.out.println(triath.raceStartTime);
		System.out.println(triath.bibNumber);
		
		Athlete biath = new Athlete("Bob McBob", 2000);
		System.out.println(biath.name);
		System.out.println(biath.raceLocation);
		System.out.println(biath.raceStartTime);
		System.out.println(biath.bibNumber);
	raceLocation = "The Pacific Ocean";
	raceStartTime = "1 AM";
	System.out.println(biath.name);
	System.out.println(biath.raceLocation);
	System.out.println(biath.raceStartTime);
	System.out.println(biath.bibNumber);
	
	System.out.println(triath.name);
	System.out.println(triath.raceLocation);
	System.out.println(triath.raceStartTime);
	System.out.println(triath.bibNumber);
	}
}
