// Kora — parametric master (instrument-maker). Units: mm.
// Generated; tune the inputs, re-render. Geometry authority = DXF for flat parts.

/* [Resonator] */
gourd_d      = 419.1;   // 16.5 in kettle gourd
rim_d        = 335.3;     // cut opening / skin rim
skin_drop    = 75.4;

/* [Neck] */
neck_len     = 1200;
neck_d       = 32;
eyebolt_d    = 10;               // base anchor
n_strings    = 21;
tuner_pitch  = 22;               // along headstock, two staggered rows
tuner_hole_d = 10;

/* [Bridge] */
bridge_w     = 130;
bridge_h     = 80;
bridge_t     = 12;
string_pitch = 10;
n_left       = 11;
n_right      = 10;

$fn = 80;

module gourd() {
  difference() {
    sphere(d = gourd_d);
    translate([0,0, gourd_d/2 - skin_drop]) cylinder(d = rim_d, h = gourd_d, $fn=120);
  }
}

module neck() {
  // round pole through the gourd, headstock flat at far end, eyebolt boss at base
  rotate([0,90,0]) cylinder(d = neck_d, h = neck_len, center = true);
  // headstock flat
  translate([neck_len/2 - 220, 0, 0])
    cube([220, neck_d*1.4, neck_d*0.5], center = true);
  // tuner holes (two staggered rows)
  for (i = [0:n_strings-1]) {
    row = (i % 2 == 0) ? 1 : -1;
    translate([neck_len/2 - 60 - i*tuner_pitch/2, row*neck_d*0.35, 0])
      rotate([0,0,0]) cylinder(d = tuner_hole_d, h = neck_d*2, center=true);
  }
  // eyebolt boss at base
  translate([-neck_len/2 + 10, 0, 0]) rotate([0,90,0]) cylinder(d = eyebolt_d, h = 30, center=true);
}

module bridge() {
  // tall notched standing bridge with two rows of notches
  difference() {
    cube([bridge_t, bridge_w, bridge_h], center = true);
    for (i = [0:max(n_left,n_right)-1]) {
      y = -bridge_w/2 + 12 + i*string_pitch;
      // left-row notch (upper), right-row notch (lower)
      translate([0, y, bridge_h/2]) rotate([0,45,0]) cube([3,3,6], center=true);
      translate([0, y + string_pitch/2, bridge_h/2 - 14]) rotate([0,45,0]) cube([3,3,6], center=true);
    }
  }
}

module rim_ring() {
  // 1/8 x 1 in aluminum bar bent to the rim (1/8=3.18, 1=25.4)
  rotate_extrude($fn=160)
    translate([rim_d/2, 0, 0]) square([3.18, 25.4], center=true);
}

module handle_post() { cylinder(d = 28, h = 180); }  // lathe-turned grip

module kora() {
  color("Peru") gourd();
  color("Tan") translate([0,0, gourd_d/2 - skin_drop]) cylinder(d = rim_d, h = 2);   // skin
  color("SaddleBrown") translate([0,0,0]) neck();
  color("Sienna") translate([0,0, gourd_d/2 - skin_drop + 2]) bridge();
  color("Silver") translate([0,0, gourd_d/2 - skin_drop]) rim_ring();
  color("SaddleBrown") translate([0, -rim_d/2-20, gourd_d/2 - skin_drop]) handle_post();
  color("SaddleBrown") translate([0,  rim_d/2+20, gourd_d/2 - skin_drop]) handle_post();
}

kora();
