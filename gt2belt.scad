module gt2_belt(length = 10, width = 6)
{
	union()
	{
		//cube([length, 3, width], center=false);

		tooth_length = 0.85;
		tooth_depth = 0.8;

		// convert length to amount of teeth
		for(i = [0 : length / 2])
			translate([i * (2), -tooth_depth, 0])
				cube([tooth_length, tooth_depth, width]);
	}
}

//gt2_belt();