%This program is fiber simulation for the mean free uniform continuous

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=20;                             %sample size
a=-sqrt(2)/2;                       %lower bound for uniform distribution
b=sqrt(2)/2;                        %upper bound for uniform distribution

    for i=1:n
                    
        dx=unifrnd(a,b,1);          %x distance from origin
        dy=unifrnd(a,b,1);          %y distance from origin
        x0=.5+dx;                   %x intercept  
        y0=.5+dy;                   %y intercept  
        angle=unifrnd(0,2*pi,1);    %angle
        slope=-(1/tan(angle));      %slope
        y=slope*(x-x0)+y0;          %point slope form of line side 
        
    
     plot(x,y,'k')                  %plot
     xlim([0 1])                    %x limits
     ylim([0 1])                    %y limits
     hold on;                       %hold on for graph 
  
    end