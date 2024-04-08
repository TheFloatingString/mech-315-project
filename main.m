tspan = [0: .01: 100];
% y0 = [0;0;0;0;0;0];
y0 = [0;0;0;0;0;0;0;0;0;0;0;0];
[t,y] = ode23('rocket_no_dva', tspan, y0);
subplot(311);
plot(t,y(:,1));
title('Engine 1 Displacement')
xlabel('t (s)');
ylabel('x1(t) (m)');
subplot(312);
plot(t,y(:,3));
title('Engine 2 Displacement')
xlabel('t (s)');
ylabel('x2(t) (m)');
subplot(313);
plot(t,y(:,5))
title('Stage 1 Displacement')
xlabel('t (s)');
ylabel('x3 (t) (m)');
% saveas(gcf,'fig.png')
hold off

% subplot(311);
% plot(t,y(:,7))
% title('Stage 1 Rotation for J_0')
% xlabel('t (s)');
% ylabel('x4 (t)');
% subplot(312);
% plot(t,y(:,9))
% title('Stage 2 Displacement')
% xlabel('t (s)');
% ylabel('x5 (t) (m)');
% subplot(313);
% plot(t,y(:,11))
% title('Payload Displacement')
% xlabel('t (s)');
% ylabel('x6 (t) (m)');
% saveas(gcf,'fig-2.png')

