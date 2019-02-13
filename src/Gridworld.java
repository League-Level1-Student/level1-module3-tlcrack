import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
	World worldy = new World();
	worldy.show();
	Bug bitty = new Bug();
	Bug randy = new Bug();
	Flower poppy = new Flower();
	Location Loca = new Location(5,7);
	worldy.add(Loca, bitty);
	int r = 0;
	Random rand = new Random();
	r = rand.nextInt(10);
	
	Location loca = new Location(r,r);
	worldy.add(loca, randy);
	}
}
