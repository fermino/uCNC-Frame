/**
 * A configuration file that contains all the parameters for the mechanical
 * parts of the uCNC frame.
 *
 * The configuration is split out like this to make it easy for all the part
 * files to _include_ this file and thus give all parts access to the various
 * sizes used to define the frame.
 **/

// Cylinder granularity
$fn=120;

// General paramaters
wallT = 1.8;    // General wall thicknes for more uniform parts
railD = 6;      // Rails rod diameter

// XBridge general sizes
XB_h = 52;    // Height
XB_w = 47;    // Width
XB_f = 30;    // Length of foot piece
XB_t = wallT; // Wall thickness
XB_rd = railD;// Diameter of rail rods
XB_rcd = 20;  // Rails center distance - distance center-to-center
XB_md = 4;    // Mount slits diameter in foot.
XB_dwd = 1;   // Drive wire diameter

// XBridge bearing side bearing params
B_od = 11;
B_id = 5;
B_t = 5;

// XCarriage parameters
XC_w = 20;      // Width
XC_h = 40;      // Height
XC_t = wallT;   // Wall Thickness
XC_rd = XB_rd;  // Rails are the same diameter as for the X Bridge
XC_rhc = 0.4;     // Clearance across rail hole diameter for easier fit of rods.
XC_rcd = XB_rcd;// Rails are same distance apart as for X Bridge
XC_bw = 5;      // Total width for each bushing
XC_dwd = B_od-2;  // The distance between the holes for the drive wires through
                // the carraige. It is best to have this width the same as the
                // bearing OD and the drive shaft/motor coupling OD to ensure
                // the wires stay the same width apart at points in the carraige
                // travel. This value also determines the depth of the carraige.
XC_springs = false; // The original uCNC plotter design had "springs" between the
                    // Top and bottom parts which I assume was to help in case
                    // the top and bottom rods were not perfectly parallel. Since
                    // moving the drive wire to the center between the top and
                    // bottom rods in the carraige, there is not much space left
                    // to add the springs and get them to print properly. For
                    // this reason, this option allows them to be added possbily
                    // when upscaling the complete design.

// PenTool parameters
PT_w = XC_w;        // Width is the same as the X-carraige
PT_h = XC_h * 2;    // Height is the X-carriage + servo height
PT_t = wallT;       // Wall thickness
PT_psw = PT_w-PT_t*2; // The width (at face level) for the pen holder slides
SRV_hornPos = 20;   // How far above the tool face the top of the servo horn
                    // should be

// Magnet size is used for attachment method
magSize = [6, 3];   // 6mm diameter by 3mm thick

// 9g Micro servo parameters
SRV_w = 22.6;   // Body width
SRV_lh = 15.6;  // Lower body height - up to bottom of mounting tabs
SRV_d = 12.3;   // Body depth
SRV_tw = 4.4;   // Width of one tab
SRV_th = 2.46;  // Height of tab
SRV_uh = 4.15;  // Upper body height - from top of mounting tabs to body top
SRV_gh = 4.5;   // Height og top round gear extrusion
SRV_bgd = 5;  // Top back smaller gear extrusion diameter
SRV_sd = 5;     // Shaft diameter
SRV_sh = 2.6;   // Shaft height
SRV_mhd = 2.2;  // Mounting hole diameter
SRV_fh = SRV_lh+SRV_th+SRV_uh+SRV_gh+SRV_sh; // The full servo height

// Direct from the StepMotor28BYJ library
MBH = 18.8;   // motor body height
MBD = 28.25;  // motor body OD
MTH  = 0.8;   // mounting tab thickness
MTW  = 7.0;   // mounting tab width
MHCC = 35.0;  // mounting hole center-to-center
SHH = 9.75;   // height of shaft above motor body 


