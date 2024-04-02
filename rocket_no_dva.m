% use N-m-Pa convention.

function f = rocket_no_dva(t, y)
f = zeros(12,1);

% engine constants
F0_eng1 = 0.01; % in [m]
F0_eng2 = 0.01;
w_eng1 = 1; % in [rad/s]
w_eng2 = 1;
phi_eng_1 = 0;  % in [rad]
phi_eng_2 = 0.01; 

% mass in units of [kg]
m_1 = 1;
m_2 = 1;
m_3 = 1;
m_4 = 1;
m_5 = 1;
% damper in units of [?] TODO
c_1 = 1;
c_2 = 1;
c_3 = 1;
c_4 = 1;
c_5 = 1;
% spring in unites of [N/m]
k_1 = 1;
k_2 = 1;
k_3 = 1;
k_4 = 1;
k_5 = 1;

% define equations
f(1) = y(2);
f(2) = F0_eng1*cos(w_eng1*t+phi_eng_1); % TODO: incomplete
f(3) = y(4);
f(4) = 0;
f(5) = y(6);
f(6) = 0;
f(7) = y(8);
f(8) = 0;
f(9) = y(10);
f(10) = 0;
f(11) = y(12);
f(12) = 0;
