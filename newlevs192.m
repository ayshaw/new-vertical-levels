%192 level grid
clc
clear all;close all;
[a96,delimiterOut]=importdata('ak96.txt')
[b96,delimiterOut] = importdata('bk96.txt')
a99 = reshape(a96',[99,1])
b99 = reshape(b96',[99,1])
a96 = a99(1:96)
b96 = b99(1:96)

% %GEOS 72
%        a72 = [...
%         1.0000000,       2.0000002,       3.2700005,       4.7585009,       6.6000011, ...
%         8.9345014,       11.970302,       15.949503,       21.134903,       27.852606, ...
%         36.504108,       47.580610,       61.677911,       79.513413,       101.94402, ...
%         130.05102,       165.07903,       208.49704,       262.02105,       327.64307, ...
%         407.65710,       504.68010,       621.68012,       761.98417,       929.29420, ...
%         1127.6902,       1364.3402,       1645.7103,       1979.1604,       2373.0405, ...
%         2836.7806,       3381.0007,       4017.5409,       4764.3911,       5638.7912, ...
%         6660.3412,       7851.2316,       9236.5722,       10866.302,       12783.703, ...
%         15039.303,       17693.003,       20119.201,       21686.501,       22436.301, ...
%         22389.800,       21877.598,       21214.998,       20325.898,       19309.696, ...
%         18161.897,       16960.896,       15625.996,       14290.995,       12869.594, ...
%         11895.862,       10918.171,       9936.5219,       8909.9925,       7883.4220, ...
%         7062.1982,       6436.2637,       5805.3211,       5169.6110,       4533.9010, ...
%         3898.2009,       3257.0809,       2609.2006,       1961.3106,       1313.4804, ...
%         659.37527,       4.8048257,       0.0000000 ]';
%  
%        b72 = [... 
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,       0.0000000,       0.0000000,       0.0000000,       0.0000000, ...
%         0.0000000,   8.1754130e-09,    0.0069600246,     0.028010041,     0.063720063, ...
%        0.11360208,      0.15622409,      0.20035011,      0.24674112,      0.29440312, ...
%        0.34338113,      0.39289115,      0.44374018,      0.49459020,      0.54630418, ...
%        0.58104151,      0.61581843,      0.65063492,      0.68589990,      0.72116594, ...
%        0.74937819,      0.77063753,      0.79194696,      0.81330397,      0.83466097, ...
%        0.85601798,      0.87742898,      0.89890800,      0.92038701,      0.94186501, ...
%        0.96340602,      0.98495195,       1.0000000 ]';
% 
% %EC 137
%        a137 = [...
%           1.000000, 2.000365, 3.102241, 4.666084, 6.827977, 9.746966, 13.605424, 18.608931, 24.985718, 32.985710,  ...
%           42.879242, 54.955463, 69.520576, 86.895882, 107.415741, 131.425507, 159.279404, 191.338562, 227.968948, 269.539581, ...
%           316.420746, 368.982361, 427.592499, 492.616028, 564.413452, 643.339905, 729.744141, 823.967834, 926.344910, 1037.20117,...  
%           1156.853638, 1285.610352, 1423.770142, 1571.622925, 1729.448975, 1897.519287, 2076.095947, 2265.431641, 2465.770508, 2677.348145,  ...
%           2900.391357, 3135.119385, 3381.743652, 3640.468262, 3911.490479, 4194.930664, 4490.817383, 4799.149414, 5119.895020, 5452.990723,  ...
%           5798.344727, 6156.074219, 6526.946777, 6911.870605, 7311.869141, 7727.412109, 8159.354004, 8608.525391, 9076.400391, 9562.682617,  ...
%           10065.978516, 10584.631836, 11116.662109, 11660.067383, 12211.547852, 12766.873047, 13324.668945, 13881.331055, 14432.139648, 14975.615234,  ...
%           15508.256836, 16026.115234, 16527.322266, 17008.789062, 17467.613281, 17901.621094, 18308.433594, 18685.718750, 19031.289062, 19343.511719,  ...
%           19620.042969, 19859.390625, 20059.931641, 20219.664062, 20337.863281, 20412.308594, 20442.078125, 20425.718750, 20361.816406, 20249.511719,  ...
%           20087.085938, 19874.025391, 19608.572266, 19290.226562, 18917.460938, 18489.707031, 18006.925781, 17471.839844, 16888.687500, 16262.046875,  ...
%           15596.695312, 14898.453125, 14173.324219, 13427.769531, 12668.257812, 11901.339844, 11133.304688, 10370.175781, 9617.515625, 8880.453125,  ...
%           8163.375000, 7470.343750, 6804.421875, 6168.531250, 5564.382812, 4993.796875, 4457.375000, 3955.960938, 3489.234375, 3057.265625,  ...
%           2659.140625, 2294.242188, 1961.500000, 1659.476562, 1387.546875, 1143.250000, 926.507812, 734.992188, 568.062500, 424.414062,  ...
%           302.476562, 202.484375, 122.101562, 62.781250, 22.835938, 3.757813, 0.000000, 0.000000 ]' ;
% 
%        b137 = [...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,  ...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,  ...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,  ...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,  ...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,  ...
%           0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000007, 0.000024, 0.000059, 0.000112, 0.000199,  ...
%           0.000340, 0.000562, 0.000890, 0.001353, 0.001992, 0.002857, 0.003971, 0.005378, 0.007133, 0.009261,  ...
%           0.011806, 0.014816, 0.018318, 0.022355, 0.026964, 0.032176, 0.038026, 0.044548, 0.051773, 0.059728,  ...
%           0.068448, 0.077958, 0.088286, 0.099462, 0.111505, 0.124448, 0.138313, 0.153125, 0.168910, 0.185689,  ...
%           0.203491, 0.222333, 0.242244, 0.263242, 0.285354, 0.308598, 0.332939, 0.358254, 0.384363, 0.411125,  ...
%           0.438391, 0.466003, 0.493800, 0.521619, 0.549301, 0.576692, 0.603648, 0.630036, 0.655736, 0.680643,  ...
%           0.704669, 0.727739, 0.749797, 0.770798, 0.790717, 0.809536, 0.827256, 0.843881, 0.859432, 0.873929,  ...
%           0.887408, 0.899900, 0.911448, 0.922096, 0.931881, 0.940860, 0.949064, 0.956550, 0.963352, 0.969513,  ...
%           0.975078, 0.980072, 0.984542, 0.988500, 0.991984, 0.995003, 0.997630, 1.000000   ]';

% Construct and plot EC 137 level grid
% pedge = a137   + 100000.0.*b137;
% da137 = a137(1:137)-a137(2:138);
% db137 = b137(1:137)-b137(2:138);
% pmid =  0.5 .* ( pedge(1:size(a137,1)-1)   + pedge(2:size(a137,1)) );
% pedgediff1 = pedge(2:size(a137,1))-pedge(1:size(a137,1)-1);
% pedgediff2 = pedgediff1(1:size(a137,1)-2) - pedgediff1(2:size(a137,1)-1);

% figure(1)
% plot(pedgediff1./100,'k-*');axis([0 150 -10 25])
% hold on
% plot(pedgediff2./100,'b-*');axis([0 150 -10 25])
% title('EC 137 levels, dPe (black), ddPe (blue)');
% print('-dtiff','EC137levs.tiff');
% 
% Construct and plot GEOS-5 72 level grid
psurf = 100000.0
psurf = 50000.0
pedge132 = a96   + psurf.*b96;
pmid132 =  0.5 .* ( pedge132(1:size(a96,1)-1)   + pedge132(2:size(a96,1)) );
pedgediff1132 = pedge132(2:size(a96,1))-pedge132(1:size(a96,1)-1);
pedgediff2132 = pedgediff1132(1:size(a96,1)-2) - pedgediff1132(2:size(a96,1)-1);

figure(1)
plot(pedgediff1132./100,'k-*')
hold on
plot(pedgediff2132./100,'b-*')
title('GEOS 132 levels, dPe (black), ddPe (blue)');
print('-dtiff','G132.tiff');
oldvert = 96
% Start to make 264 level grid, half of delta P of 132 level grid
da96 = a96(1:oldvert-1)-a96(2:oldvert);
db96 = b96(1:oldvert-1)-b96(2:oldvert);
aa = ones(oldvert,1);
aa(1) = a96(1);
bb = ones(oldvert,1);
bb(1) = b96(1);

for l=2:oldvert
aa(l) = aa(l-1) - da96(l-1);
bb(l) = bb(l-1) - db96(l-1);
end

newnumlevs = 190;
newnumedges = newnumlevs + 1;

newak = ones(newnumedges,1);
newak(1) = a96(1);
newbk = ones(newnumedges,1);
newbk(1) = b96(1);

for l=2:newnumedges
index = floor(l./2);
newak(l) = newak(l-1) - da96(index)./2;
newbk(l) = newbk(l-1) - db96(index)./2;
end

pedgenew = newak   + 100000.0.*newbk;
pmidnew =  0.5 .* ( pedgenew(1:size(newak,1)-1)   + pedgenew(2:size(newak,1)) );
pedgenewdiff1 = pedgenew(2:size(newak,1))-pedgenew(1:size(newak,1)-1);
pedgenewdiff2 = pedgenewdiff1(1:size(newak,1)-2) - pedgenewdiff1(2:size(newak,1)-1);

p1new = newak;                                
p2new = newbk.*100000;

p1newdiff = p1new(2:size(newak,1))-p1new(1:size(newak,1)-1);
p2newdiff = p2new(2:size(newak,1))-p2new(1:size(newak,1)-1);

% Now smooth out the new 264 level grid with a cubic
p1vals = polyfit(pmidnew,p1newdiff,2);
p2vals = polyfit(pmidnew,p2newdiff,2);

p1approx = polyval(p1vals,pmidnew);
p2approx = polyval(p2vals,pmidnew);
p2approx(find(p2approx<0.))=0.;

sumold = sum(p1newdiff+p2newdiff);
sumnew = sum(p1approx+p2approx);
p1approx = p1approx.*(sumold/sumnew);
p2approx = p2approx.*(sumold/sumnew);

smoothak = ones(newnumedges,1);
smoothak(1) = newak(1);
smoothbk = ones(newnumedges,1);
smoothbk(1) = newbk(1);
for l=2:newnumedges
smoothak(l) = smoothak(l-1) + p1approx(l-1);
smoothbk(l) = smoothbk(l-1) + p2approx(l-1)./100000;
end
smoothak(newnumedges) = 0.00000;
smoothbk(newnumedges) = 1.00000;

dasmooth264 = smoothak(1:newnumedges-1)-smoothak(2:newnumedges);
dbsmooth264 = smoothbk(1:newnumedges-1)-smoothbk(2:newnumedges);

smoothpedge = smoothak + 100000.*smoothbk;
smoothpmid =  0.5 .* ( smoothpedge(1:size(smoothak,1)-1)   + smoothpedge(2:size(smoothak,1)) );
smoothpedgediff1 = smoothpedge(2:size(smoothak,1))-smoothpedge(1:size(smoothak,1)-1);
smoothpedgediff2 = smoothpedgediff1(1:size(smoothak,1)-2) - smoothpedgediff1(2:size(smoothak,1)-1);

figure(2)
plot(smoothpedgediff1./100,'k-*');axis([0 150 -10 25])
hold on
plot(smoothpedgediff2./100,'b-*');axis([0 150 -10 25])
title('GEOS 264 levels, dPe (black), ddPe (blue)');
print('-dtiff','G264levs.tiff');


fid = fopen('akbk192','wt');
fprintf(fid,'%0.20f, %0.20f, %0.20f, %0.20f\n',smoothak.');
fprintf(fid,'\n',fid');
fprintf(fid,'\n',fid');
fprintf(fid,'%0.20f, %0.20f, %0.20f, %0.20f\n',smoothbk.');
fprintf(fid,'\n',fid');
fclose(fid);


% Get some different views of new grid - get p**kappa to compute height

pressures = [ 1000 975 950 925 900 875 850 825 800 775 750 725 700 650 600 550 500 450 400 350 300 250 200 ...
              150 100 70 50 40 30 20 10 7 5 4 3 2 1 0.7 0.5 0.4 0.3 0.1 ]

temperatures = [ 299.554 297.44 295.365 293.707 292.556 291.751 291.033 290.003 288.784 287.429 285.975 284.441 ...
                 282.832 279.649 276.402 272.777 268.692 264.135 258.698 252.264 243.859 233.459 220.422 204.836  ...
                 190.977 197.927 206.45 210.703 215.665 221.918 231.624 236.474 241.644 245.74 251.844 260.27 265.22 ...
                 262.113 255.687 250.754 244.291 223.859 ]
pedge96 = a96 + 100000.*b96;
pmid96 =  0.5 .* ( pedge96(1:size(a96,1)-1)   + pedge96(2:size(a96,1)) );
pedgediff196 = pedge96(2:size(a96,1))-pedge96(1:size(a96,1)-1);
pedgediff296 = pedgediff196(1:size(a96,1)-2) - pedgediff196(2:size(a96,1)-1);

pvals = polyfit(pressures,temperatures,8);
tempapprox = polyval(pvals,pressures);

tempat96levs = polyval(pvals,pmid96./100.);
pkappamid = (pmid96./100000.).^0.286;
pkappaedge = (pedge96./100000.).^0.286;
theta = tempat96levs./pkappamid;
dpkedge = pkappaedge(2:oldvert) - pkappaedge(1:oldvert-1);
zedges = zeros(oldvert,1);
for iz = oldvert-1:-1:1
zedges(iz) = zedges(iz+1) + (1003./9.8)*theta(iz)*dpkedge(iz);
end
zedgediff = zedges(1:oldvert-1)-zedges(2:oldvert);

tempatnew = polyval(pvals,smoothpmid./100.);
pkappanewmid = (smoothpmid./100000.).^0.286;
pkappanewedge = (smoothpedge./100000.).^0.286;
thetanew = tempatnew./pkappanewmid;
dpkedgenew = pkappanewedge(2:newnumedges) - pkappanewedge(1:newnumedges-1);
zedgesnew = zeros(newnumedges,1);
for iz = newnumedges-1:-1:1
zedgesnew(iz) = zedgesnew(iz+1) + (1003./9.8)*thetanew(iz)*dpkedgenew(iz);
end
zedgediff137 = zedgesnew(1:newnumedges-1)-zedgesnew(2:newnumedges);

figure(3)
plot(pmid96./100,zedgediff./1000,'b*');axis([300 1000 0 1]);
hold on
plot(smoothpmid./100,zedgediff137./1000,'r*');axis([300 1000 0 1]);
xlabel('pmidnew [hpa]'), ylabel('zedge diff [km]')
print('-dtiff','deltaz1.tiff');


figure(4)
plot(pmid96./100,zedgediff./1000,'b*');axis([0 5 0 5]);
hold on
plot(smoothpmid./100,zedgediff137./1000,'r*');axis([0 5 0 5]);
print('-dtiff','deltaz3.tiff');


