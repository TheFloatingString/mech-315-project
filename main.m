tspan = [0: .001: 10];
% y0 = [0;0;0;0;0;0];
y0 = [0;0;0;0;0;0;0;0;0;0;0;0];
[t,y] = ode23('rocket_no_dva', tspan, y0);
subplot(611);
plot(t,y(:,1));
xlabel('t');
ylabel('x1(t)');
subplot(612);
plot(t,y(:,3));
xlabel('t');
ylabel('x2(t)');
subplot(613);
plot(t,y(:,5))
xlabel('t');
ylabel('x3 (t)');
subplot(614);
plot(t,y(:,7))
xlabel('t');
ylabel('x4 (t)');
subplot(615);
plot(t,y(:,9))
xlabel('t');
ylabel('x5 (t)');
subplot(616);
plot(t,y(:,11))
xlabel('t');
ylabel('x6 (t)');
