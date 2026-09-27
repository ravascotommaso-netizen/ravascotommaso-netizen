%% Formula Vehicle Parameters Initialization
g=9.81;
% --- Vehicle Dimensions ---
L = 3.50;           % Wheelbase [m]
h = 0.20;           % CoG height [m]
a = 1.80;           % Sprung mass CoG front distance [m]
b=L-a;
tf = 1.75;          % Front Wheel track [m]
tr = 1.85;          % Rear Wheel track [m]
r = 0.375;          % Wheel radius [m]
hrcf = 0.04;        % Front roll centre height [m]
hrcr = 0.06;        % Rear roll centre height [m]
hrc = 0.05;         % Roll centre height [m]

% --- Mass and Inertia ---
m = 850.00;         % Mass [kg]
musf = 15.00;       % Front right and left corner unsprung mass [kg] 
musr = 17.50;       % Rear right and left corner unsprung mass [kg] 
Ixx = 300.00;       % Roll inertia [kgm^2]
Iyy = 1350.00;      % Pitch inertia [kgm^2]
ms=m-2*musf-2*musr;

% --- Aerodynamics ---
A = 1.25;           % Frontal area [m^2]
cz = 1.00;          % DF (Downforce) coefficient
rho = 1.225;        % Air density [kg/m^3]

% --- Suspension Parameters ---
ksf = 67500.00;     % Front spring stiffness [N/m], equals for left and right
cdf = 1400.00;      % Front damping coefficient [Ns/m]
kARBf = 5000.00;    % Front ARB (Anti-Roll Bar) stiffness [Nm/rad]

ksr = 100000.00;    % Rear spring stiffness [N/m]
cdr = 1800.00;      % Rear damping coefficient [Ns/m]
kARBr = 1000.00;    % Rear ARB (Anti-Roll Bar) stiffness [Nm/rad]

ktyre = 400000.00;  % Tyre vertical stiffness [N/m]
F0fl=ms*g*(b/L)*1/2;
F0fr=F0fl;
F0rl=ms*g*(a/L)*1/2;
F0rr=F0rl;
z0tfl=(ms*(b/L)*1/2+musf)*g/ktyre;
z0tfr=z0tfl;
z0trl=(ms*(a/L)*1/2+musr)*g/ktyre;
z0trr=z0trl;