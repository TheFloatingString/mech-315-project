clf reset;

f=0.1;
zeta=0.1;
mu=0.25;
g=0.6:0.001:1.3;
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
