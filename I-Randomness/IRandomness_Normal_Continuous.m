%This program is fiber simulation for the I-randomness Normal continuous

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=2000;                             %sample size
a=-sqrt(2);                         %lower bound for uniform distribution
b=sqrt(2);                          %upper bound for uniform distribution
mu=(90)*pi/180;                     %mean (degrees)
sigma=(45)*pi/180;                  %standard deviation (degrees)



    for i=1:n
                    
        x0=unifrnd(a,b,1);          %x distance from origin
        y0=unifrnd(a,b,1);          %y distance from origin                  
        angle=normrnd(mu,sigma,1);  %angle
        slope=tan(angle);           %slope
        y=slope*(x-x0)+y0;          %point slope form of line side 
        
    
     plot(x,y,'k')                  %plot
     xlim([0 1])                    %x limits
     ylim([0 1])                    %y limits
     hold on;                       %hold on for graph 
  
    end