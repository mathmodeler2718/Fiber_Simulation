%This program is fiber simulation for the I-randomness uniform
%dis-continuous crimp

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=300;                             %sample size
a=-sqrt(2);                         %lower bound for uniform distribution
b=sqrt(2);                          %upper bound for uniform distribution

 for i=1:n
     
L=unifrnd(0,b);                %lenght of line           
x0=unifrnd(0-L/2,1+L/2,1);       %x distance from origin
y0=unifrnd(0-L/2,1+L/2,1);       %y distance from origin                  
angle=unifrnd(0,2*pi,1);         %angle for the line
x1=x0+(L/2)*cos(angle);          %x cordiante of point 1
y1=y0+(L/2)*sin(angle);          %y cordiante of point 1
x2=x0+(L/2)*cos(angle+pi);       %x cordiante of point 2
y2=y0+(L/2)*sin(angle+pi);       %y cordiante of point 2

slo=(y2-y1)/(x2-x1);            %slope of crimp
th=atan(slo);                   %angle of crimp
c=cos(th);                      %cosine of crimp angle
s=sin(th);                       %sine of crimp angle

%A=-slo/(2*pi);
A=normrnd(.01,.01);                 %Amplitude or height of crimp
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
