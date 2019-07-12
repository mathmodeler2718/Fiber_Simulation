clear all;close all;hold on;

a=-sqrt(2);                         %lower bound for uniform distribution
b=sqrt(2);  
L=unifrnd(0,b,1);           %lenght of line           
x0=unifrnd(0-L/2,1+L/2,1);  %x distance from origin
y0=unifrnd(0-L/2,1+L/2,1);  %y distance from origin                  
angle=unifrnd(0,2*pi,1); 
x1=x0+(L/2)*cos(angle);
y1=y0+(L/2)*sin(angle);
x2=x0+(L/2)*cos(angle+pi);
y2=y0+(L/2)*sin(angle+pi);

slo=(y2-y1)/(x2-x1);

th=atan(slo);

c=cos(th);
s=sin(th);

%A=-slo/(2*pi);
A=unifrnd(0,1);
K=(x2-x1)/c;

%K=10;

%how many
t=0:0.01:1;
freq=unifrnd(10,17);

plot(K * (c * t - A * sin(freq*pi*t)) + x1, K *( s * t + A * sin(freq*pi*t)) + y1);

plot([x1,x2],[y1,y2]);
  xlim([-1 2])                    %x limits
     ylim([-1 2])                    %y limits

