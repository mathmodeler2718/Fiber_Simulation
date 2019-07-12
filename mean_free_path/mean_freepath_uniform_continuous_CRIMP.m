%This program is fiber simulation for the I-randomness uniform
%dis-continuous crimp

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=50;                             %sample size
a=-sqrt(2);                         %lower bound for uniform distribution
b=sqrt(2);                          %upper bound for uniform distribution

 for i=1:n
     
      d=unifrnd(a,b,1);                   %distance from origin
        angle=unifrnd(0,2*pi,1);            %angle
        L=10;              %length of line
        xp=.5+d*cos(angle);                 %x cordinate of midpoint
        yp=.5+d*sin(angle);                 %y cordinate of midpoint
        x1=xp+(L/2)*cos(angle + pi/2);      %x cordinate of point 1
        y1=yp+(L/2)*sin(angle + pi/2);      %y cordinate of point 1
        x2=xp-(L/2)*cos(angle + pi/2);      %x cordinate of point 2
        y2=yp-(L/2)*sin(angle + pi/2);      %y cordinate of point 2
        x=[x1,x2];                          %x vector of point 1, 2
        y=[y1,y2];                          %y vector of point 1, 2

slo=(y2-y1)/(x2-x1);            %slope of crimp
th=atan(slo);                   %angle of crimp
c=cos(th);                      %cosine of crimp angle
s=sin(th);                       %sine of crimp angle

%A=-slo/(2*pi);
A=normrnd(.01,.01);                     %Amplitude or height of crimp
K=(x2-x1)/c;                     %lenght of the crimp to match line              



%how many
t=0:0.01:1;                     %number of cycles 
freq=unifrnd(12,15);            %frequency or x lenght of crimp

f=K * (c * t - A * sin(freq*pi*t)) + x1;
g=K *( s * t + A * sin(freq*pi*t)) + y1;
plot(f,g,'k');

plot([x1,x2],[y1,y2],'k');
        
    
     xlim([-1 2])                    %x limits
     ylim([-1 2])                    %y limits
     hold on;                       %hold on for graph 
  
    end
