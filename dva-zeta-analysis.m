clf reset;

subplot(411)
f=1;
zeta=0.01;
mu=1e3/22800;
g=0.01:0.001:2.3;
tzg2 = (2.*zeta.*g).^2;
g2_f2_2 = (g.^2-f.^2).^2;
g2_1mug2_2 = (g.^2-1+mu.*g.^2).^2;
muf2g2 = mu.*f.^2*g.^2;
g2_1 = g.^2-1;
g2_f2 = g.^2-f.^2;

x1r = sqrt((tzg2+g2_f2_2)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
x2r = sqrt((tzg2+f.^4)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
plot(g,x1r);
hold on
plot(g,x2r);
xlabel('g');
ylabel('X1r and X2r')
title('Vibration Amplitude for \zeta=0.01')
legend('X1r','X2r')


subplot(412)
f=1;
zeta=0.1;
mu=1e3/22800;
g=0.01:0.001:2.3;
tzg2 = (2.*zeta.*g).^2;
g2_f2_2 = (g.^2-f.^2).^2;
g2_1mug2_2 = (g.^2-1+mu.*g.^2).^2;
muf2g2 = mu.*f.^2*g.^2;
g2_1 = g.^2-1;
g2_f2 = g.^2-f.^2;

x1r = sqrt((tzg2+g2_f2_2)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
x2r = sqrt((tzg2+f.^4)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
plot(g,x1r);
hold on
plot(g,x2r);
xlabel('g');
ylabel('X1r and X2r')
title('Vibration Amplitude for \zeta=0.1')
legend('X1r','X2r')


subplot(413)
f=1;
zeta=0.5;
mu=1e3/22800;
g=0.01:0.001:2.3;
tzg2 = (2.*zeta.*g).^2;
g2_f2_2 = (g.^2-f.^2).^2;
g2_1mug2_2 = (g.^2-1+mu.*g.^2).^2;
muf2g2 = mu.*f.^2*g.^2;
g2_1 = g.^2-1;
g2_f2 = g.^2-f.^2;

x1r = sqrt((tzg2+g2_f2_2)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
x2r = sqrt((tzg2+f.^4)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
plot(g,x1r);
hold on
plot(g,x2r);
xlabel('g');
ylabel('X1r and X2r')
title('Vibration Amplitude for \zeta=0.5')
legend('X1r','X2r')


subplot(414)
f=1;
zeta=1;
mu=1e3/22800;
g=0.01:0.001:2.3;
tzg2 = (2.*zeta.*g).^2;
g2_f2_2 = (g.^2-f.^2).^2;
g2_1mug2_2 = (g.^2-1+mu.*g.^2).^2;
muf2g2 = mu.*f.^2*g.^2;
g2_1 = g.^2-1;
g2_f2 = g.^2-f.^2;

x1r = sqrt((tzg2+g2_f2_2)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
x2r = sqrt((tzg2+f.^4)./(tzg2.*g2_1mug2_2+(muf2g2-g2_1.*g2_f2).^2));
plot(g,x1r);
hold on
plot(g,x2r);
xlabel('g');
ylabel('X1r and X2r')
title('Vibration Amplitude for \zeta=1')
legend('X1r','X2r')
