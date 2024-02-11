disp("Spherical_Modern")

syms a1 a2 a3

%% Link Lengths
a1 = 5;

a2 = 3;
a3 = 2;
d1 = 1;

%% D-H Parameters: theta, d, r, alpha, offset
% if prismatic joint: theta = theta, d = 0, offset = 1, after offset put the value of d
% if revolute joint: theta = 0,offset = 0, after offset put the value of theta

H0_1 = Link([0,a1,0,pi/2,0,0]); 
H0_1.qlim = pi/180*[-90 90];

H1_2 = Link([0,0,a2,pi/2,0,pi/2]); 
H1_2.qlim = pi/180*[-90 90];

H2_3 = Link([0,0,0,0,1,a3+d1]); 
H2_3.qlim = [0 d1];


%% Build the Mechnical Manipulator
Spherical_modern = SerialLink([H0_1 H1_2 H2_3], 'name', 'Spherical_modern')
Spherical_modern.plot([0 0 0], 'workspace', [-5 5 -5 5 -8 10])
Spherical_modern.teach
