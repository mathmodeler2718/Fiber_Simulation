%This program is fiber simulation for the I-randomness normal dis-continuous

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
        L=unifrnd(0,b,1);           %lenght of line           
        x0=unifrnd(0-L/2,1+L/2,1);  %x distance from origin
        y0=unifrnd(0-L/2,1+L/2,1);  %y distance from origin                  
        angle=normrnd(mu,sigma,1);  %angle
        x1=x0+(L/2)*cos(angle);     %x cordinate of point 1
        y1=y0+(L/2)*sin(angle);     %y cordinate of point 1
        x2=x0+(L/2)*cos(angle+pi);  %x cordinate of point 2
        y2=y0+(L/2)*sin(angle+pi);  %y cordinate of point 2 
        x=[x1,x2];                  %x vector of point 1, 2
        y=[y1,y2];                  %y vector of point 1, 2
     
        
    
     plot(x,y,'k')                  %plot
     xlim([0 1])                    %x limits
     ylim([0 1])                    %y limits
     hold on;                       %hold on for graph 
  
    end