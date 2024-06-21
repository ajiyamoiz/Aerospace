clear all
clc

W = 18000;
V = 100:0.01:1000;
S = 300;
b = 48.5;
e = 0.85;
Cdo = 0.02;

Cl = 2*W./(0.002377*V.^2*S);
AR = b^2/S;
Cd = Cdo + Cl.^2./(pi*e*AR);
LD = Cl./Cd;
TR = W./LD;
PR = TR./V;

TF = islocalmin(TR);
plot(V,TR,V(TF),TR(TF),'r*')
min(TR)
V(TF)
hold on
plot(V,PR,'b.')