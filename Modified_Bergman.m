p0 = 195;
p1 = 0.028735;
p2 = 0.028344;
p3 = 5.035E-5;
p4 = 0.3;
Gb = 81;
Ib = 15;
G0 = Gb + p0;
I0 = Ib + 396;
D0 = 10;
X0 = 0;
Rultn = 0.74;
drate = 0.05;
G_set = 150;
V1 = 12;
load('data.mat');
insulin = [data(:,1),data(:,3)];
t = 0:0.01:182;
i = interp1(insulin(:,1),insulin(:,2),t);

insulin = [t',i'];

glucose = [data(:,1),data(:,2)];
t = 0:0.01:182;
i = interp1(glucose(:,1),glucose(:,2),t);

glucose = [t',i'];