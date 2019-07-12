%This program is fiber simulation for the Anderson-Clayton 

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=2000;                             %sample size
a=-2;                                %lower bound for uniform distribution
b=2;                                %upper bound for uniform distribution



    for i=1:n
                    
        x1=unifrnd(a,b,1);          %x distance from origin
        y1=unifrnd(a,b,1);          %y distance from origin  
        x2=unifrnd(a,b,1);          %x distance from origin
        y2=unifrnd(a,b,1);          %y distance from origin  
        x=[x1,x2];                  %x vector of point 1, 2
        y=[y1,y2];                  %y vector of point 1, 2
        
    
     plot(x,y,'k')                  %plot
     xlim([0 1])                    %x limits
     ylim([0 1])                    %y limits
     hold on;                       %hold on for graph 
  
    end