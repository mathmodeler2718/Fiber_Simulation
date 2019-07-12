%This program is fiber simulation for the uniform continuous s randomness

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);               %linespaceing for x
[y]=linspace(0,1, kx+1);               %linespacing for y

n=350;                              %sample size
a=0;                                 %lower bound for uniform distribution
b=1;                                 %upper bound for uniform distribution

side=randi([1 4],n,1);               %random intiger from 1 to 4

for i=1:n
    
    if side(i)==1                   
        x0=0;                           %x intercept side 1
        y0=unifrnd(a,b,1);              %y intercept side 1
        angle=unifrnd(-pi/2,pi/2,1);    %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 1
        
    elseif side(i)==2
        x0=unifrnd(a,b,1);              %x intercept side 2
        y0=1;                           %y intercept side 2
        angle=unifrnd(-pi,0,1);         %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 2
        
    elseif side(i)==3
        x0=1;                           %x intercept side 3
        y0=unifrnd(a,b,1);              %y intercept side 3
        angle=unifrnd(pi/2,3*pi/2,1);   %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 3
        
    elseif side(i)==4
        x0=unifrnd(a,b,1);              %x intercept side 4
        y0=0;                           %y intercept side 4
        angle=unifrnd(0,pi,1);          %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 4
    end
    
   
     plot(x,y,'k')                      %plot
     xlim([a b])                        %x limits
     ylim([a b])                        %y limits
     hold on;                           %hold on for graph 
  
end