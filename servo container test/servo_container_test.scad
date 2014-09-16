s_l = 24.5;
s_w = 12.4;
wall = 4;
depth = 6;
sc_l = s_l + 2*wall;
sc_w = s_w + 2*wall;
off = 0.1;


module servo_holder() {
	difference(){
		cube([sc_l,sc_w,depth]);
		translate([wall, wall, -off]){
			cube([s_l, s_w, depth + 2*off]);
		}
		translate([0.5*wall, wall+0.5*s_w, -off]){
			cylinder(r=1, h=depth+2*off);
		}
		translate([1.5*wall+s_l, wall+0.5*s_w, -off]){
			cylinder(r=1, h=depth+2*off);
		}
	}
}

servo_holder();