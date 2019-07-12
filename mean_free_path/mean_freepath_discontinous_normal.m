%This program is fiber simulation for the mean free normal discontinuous

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=20;                             %sample size
a=-sqrt(2)/2;                       %lower bound for uniform distribution
b=sqrt(2)/2;                        %upper bound for uniform distribution
mu=(90)*pi/180;                     %mean (degrees)
sigma=(45)*pi/180;                  %standard deviation (degrees)

    for i=1:n
                    
        d=unifrnd(a,b,1);               %distance from origin
        angle=normrnd(mu,sigma,1);      %angle 
        L=unifrnd(0,sqrt(2),1);         %length of line
        xp=.5+d*cos(angle);             %x cordinate of midpoint
        yp=.5+d*sin(angle);             %y cordinate of midpoint
        x1=xp+(L/2)*cos(angle + pi/2);  %x cordinate of point 1
        y1=yp+(L/2)*sin(angle + pi/2);  %y cordinate of point 1
        x2=xp-(L/2)*cos(angle + pi/2);  %x cordinate of point 2
        y2=yp-(L/2)*sin(angle + pi/2);  %y cordinate of point 2
        x=[x1,x2];                      %x vector of point 1, 2
        y=[y1,y2];                      %y vector of point 1, 2
     
        
    
     plot(x,y,'k')                  %plot
     xlim([0 1])                    %x limits
     ylim([0 1])                    %y limits
     hold on;                       %hold on for graph 
  
    end