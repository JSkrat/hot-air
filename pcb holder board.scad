// errata
// add cut for contact spring at the lower Y side
// pcb limiter edges should start away from pcb as printer creates blobs at the ends

$fn = 30;
layer = 0.25;
wall = 0.5;
t = 0.01;
clearance = 0.2;
mount_w = 100;
mount_l = 90;
mount_h = 2;
mount_hole_d = 3.5;
mount_holes = [
    [3.3+1.75, 3.3+1.75, 3.5],
    [3.3+1.75, 83.4+1.75, 3.5],
    [94.2+1.75, 3.3+1.75, 3.5],
    [74.9+1.75, 83.4+1.75, 3.5],
];
pcb_w = 77.7;
pcb_l = 60;
pcb_h = 1.5;
pcb_hole_d = 5.2;
pcb_x = 7.7-3.1;
pcb_y = 20.4-3.1;
pcb_holes = [
    [3.1+3, 3.1+3],
    [68.7+3, 3.1+3],
    [3.1+3, 50.9+3],
    [68.7+3, 50.9+3]
];
bolt_h = 10;
//pcb_mount_h = 3.5;
nut_h = 3.8;
nut_w = 8+clearance*2;
nut_d = 2*nut_w/sqrt(3);
// nut + shim = 4.8
// pcb holder = 2
// pcb = 1.5
// pcb bottom spacing = 3.5
// bolt h min = 11.8
pcb_mount_h = bolt_h - mount_h - pcb_h;

module pcb(positive) {
    c=clearance;
    if (positive) {
        /*for (hole = pcb_holes) {
            translate([hole.x, hole.y, 0])
            cylinder(r = 5.588, h = pcb_mount_h);
        }*/
        difference() {
            h = pcb_mount_h + pcb_h-t;
            translate([-wall-c, -wall-c, 0])
            cube([pcb_w+wall*2+c*2, pcb_l+wall*2+c*2, h]);
            corner = 3.1+3+5.588;
            //cube([pcb_w, pcb_l, pcb_mount_h + pcb_h+t]);
            translate([corner, -wall-t-c, 0])
            cube([pcb_w - corner*2, pcb_l+wall*2+t*2+c*2, h+t]);
            translate([-wall-t-c, corner, 0])
            cube([pcb_w+wall*2+t*2+c*2, pcb_l - corner*2, h+t]);
        }
    } else {
        translate([-c, -c, pcb_mount_h])
        cube([pcb_w+c*2, pcb_l+c*2, pcb_h]);
        for (hole = pcb_holes) {
            translate([hole.x, hole.y, -mount_h-t]) {
                cylinder(d = nut_d, h = nut_h, $fn=6);
                translate([0, 0, nut_h + layer])
                cylinder(d = 5.2, h = pcb_mount_h+t+nut_h);
            }
        }
    }
}

module plate() {
    difference() {
        union() {
            linear_extrude(mount_h) {
                polygon([
                    [0, 0], [mount_w+2, 0],
                    [mount_w-18, mount_l], [0, mount_l]
                ]);
            }
            //cube([mount_w, mount_l, mount_h]);
            translate([pcb_x, pcb_y, mount_h])
            pcb(true);
        }
        for (hole = mount_holes) {
            translate([hole.x, hole.y, -t])
            cylinder(d = hole[2], h = mount_h + t*2 + pcb_mount_h);
        }
        translate([pcb_x, pcb_y, mount_h])
        pcb(false);
        // pcb vent
        //translate([
    }
}

plate();