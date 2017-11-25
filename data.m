p0 = 195;
p1 = 0.03082;
p2 = 0.02093;
p3 = 1.06E-5;
p4 = 0.3;
p5 = 94;
p6 = 0.003349;
Gb = 92;
Ib = 7.3;
G0 = Gb + p0;
I0 = 300;
X0 = 0;
load('data.mat');
insulin = [data(:,1),data(:,3)];
t = 0:0.01:182;
i = interp1(insulin(:,1),insulin(:,2),t);

insulin = [t',i'];

glucose = [data(:,1),data(:,2)];
t = 0:0.01:182;
i = interp1(glucose(:,1),glucose(:,2),t);

glucose = [t',i'];