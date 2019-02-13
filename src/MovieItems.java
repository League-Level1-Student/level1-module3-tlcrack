
public class MovieItems {
	
	public static void main(String[] args) {
		Movie strange = new Movie("Doctor Strange",4);
		Movie wackCondo = new Movie("Black Panther", 5);
		Movie getTogether = new Movie("Infinity War",3);
		Movie buggers = new Movie("Ant Man and The Wasp",5);
		Movie petey = new Movie("Guardians of the Galaxy",4);
		System.out.println(getTogether.getTicketPrice());
	NetflixQueue queued = new NetflixQueue();
	queued.addMovie(strange);
	queued.addMovie(wackCondo);
	queued.addMovie(buggers);
	queued.addMovie(petey);
	queued.addMovie(getTogether);
	queued.printMovies();
	System.out.println("the best movie is " + queued.getBestMovie());
	System.out.println("the second best movie is 'Ant man and the Wasp' - 5 stars ");
	}
}
