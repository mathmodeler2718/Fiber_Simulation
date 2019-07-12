%This program is fiber simulation for the I-randomness uniform continuous

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=200;                             %sample size
a=-sqrt(2);                         %lower bound for uniform distribution
b=sqrt(2);                          %upper bound for uniform distribution


    for i=1:n
                    
        x0=unifrnd(a,b,1);          %x distance from origin
        y0=unifrnd(a,b,1);          %y distance from origin                  
        angle=unifrnd(0,2*pi,1);    %angle
        slope=tan(angle);           %slope
        y=slope*(x-x0)+y0;          %point slope form of line side 
        
    
     plot(x,y,'k')                  %plot
     xlim([-3 3])                    %x limits
     ylim([-3 3])                    %y limits
     hold on;                       %hold on for graph 
  
    end