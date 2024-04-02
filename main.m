tspan = [0: .01: 10];
y0 = [0;0;0;0;0;0];
[t,y] = ode23('reference_functions', tspan, y0);
subplot(311);
plot(t,y(:,1));
xlabel('t');
ylabel('x1(t)');
subplot(312);
plot(t,y(:,3));
xlabel('t');
ylabel('x2(t)');
subplot(313);
plot(t,y(:,5))
xlabel('t');
ylabel('x3 (t)');
