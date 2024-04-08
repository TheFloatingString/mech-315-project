% use N-m-Pa convention.
% TODO: use correct values
% TODO: implement separate code for DVA
% TODO: ensure that there are no mistakes with the math equations

function f = rocket_no_dva(t, y)
c=0;
f = zeros(12,1);

% engine constants
F0_eng1 = 1.52*10e4; % in [m]
F0_eng2 = 1.52*10e4;
w_eng1 = 2*pi*20; % in [rad/s]
w_eng2 = 2*pi*20;
phi_eng_1 = 0;  % in [rad]
phi_eng_2 = pi/2; 

% Forced vibration properties
F0_vib = 1e4; % in [m]
w_vib = 2*pi*30; % in [rad/s]
phi_vib = pi/4;

% mass in units of [kg]
m_eng1 = 2475;
m_eng2 = 2475;
m_stg1 = 25600+395700-2*2475;
J_0 = m_stg1*(1.8^2);
m_stg2 = 3900+92670;
m_pay = 22800;
% damper in units of [?] TODO
c_1 = c;
c_2 = c;
c_3 = c;
c_4 = c;
% spring in unites of [N/m]
k = 1e6;
k_1 = k;
k_2 = k;
k_3 = k;
k_4 = k;
% length of beam in [m]
l = 3.7;

% define equations
f(1) = y(2);
f(2) = F0_vib*cos(w_vib*t+phi_vib)/m_eng1 + F0_eng1*cos(w_eng1*t+phi_eng_1)/m_eng1-c_1/m_eng1*y(2)+c_1/m_eng1*y(6)-k_1/m_eng1*y(1)+k_1/m_eng1*y(5);
f(3) = y(4);
f(4) = F0_vib*cos(w_vib*t+phi_vib)/m_eng2 + F0_eng2*cos(w_eng2*t+phi_eng_2)/m_eng2-c_2/m_eng2*y(4)+c_2/m_eng2*y(6)-k_2/m_eng2*y(3)+k_2/m_eng2*y(5);
f(5) = y(6);
f(6) = F0_vib*cos(w_vib*t+phi_vib)/m_stg1 + c_1/m_stg1*y(2)+c_2/m_stg1*y(4)-(c_1+c_2+c_3)/m_stg1*y(6)+c_3/m_stg1*y(10)+k_1/m_stg1*y(1)+k_2/m_stg1*y(3)-(k_1+k_2+k_3)/m_stg1*y(5)+k_3/m_stg1*y(9);
f(7) = y(8);
f(8) = (c_1*l^2/4+c_2*l^2/4)/J_0*y(8)-(k_1*l^2/4+k_2*l^2/4)/J_0*y(7);
f(9) = y(10);
f(10) = F0_vib*cos(w_vib*t+phi_vib)/m_stg2 + c_3/m_stg2*y(6)-(c_3+c_4)/m_stg2*y(10)+c_4/m_stg2*y(12)+k_3/m_stg2*y(5)-(k_3+k_4)/m_stg2*y(9)+k_4/m_stg2*y(11);
f(11) = y(12);
f(12) = F0_vib*cos(w_vib*t+phi_vib)/m_pay + c_4/m_pay*y(10)-c_4/m_pay*y(12)+k_4/m_pay*y(9)-k_4/m_pay*y(11);
