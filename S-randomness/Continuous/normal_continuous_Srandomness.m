%This program is fiber simulation for the Normal continuous s randomness

clear all                               %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);             %linespaceing for x
[y]=linspace(0,1, kx+1);             %linespaceing for x

n=2000;                              %sample size
a=0;                                 %lower bound for uniform distribution
b=1;                                 %upper bound for uniform distribution

side=randi([1 4],n,1);               %random intiger from 1 to 4

for i=1:n
    
    if side(i)==1
        mu=(0)*pi/180;                  %mean (degrees)
        sigma=(15)*pi/180;              %standard deviation (degrees)
        x0=0;                           %x intercept at side 1
        y0=unifrnd(a,b,1);              %y intercept at side 1
        angle=normrnd(mu,sigma,1);      %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 1
        
    elseif side(i)==2
        mu=(270)*pi/180;                %mean insert degrees
        sigma=(15)*pi/180;              %standard deviation insert degrees
        x0=unifrnd(a,b,1);              %x intercept at side 2
        y0=1;                           %y intercept at side 2
        angle=normrnd(mu,sigma,1);      %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slope form of line side 2
        
    elseif side(i)==3
        mu=(180)*pi/180;                %mean insert degrees
        sigma=(15)*pi/180;              %standard deviation insert degrees
        x0=1;                           %x intercept at side 3
        y0=unifrnd(a,b,1);              %y intercept at side 3
        angle=normrnd(mu,sigma,1);      %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slpe form of line side 3
        
    elseif side(i)==4
        mu=(90)*pi/180;                 %mean insert degrees
        sigma=(15)*pi/180;              %standard deviation insert degrees
        x0=unifrnd(a,b,1);              %x intercept at side 4
        y0=0;                           %y intercept at side 4
        angle=normrnd(mu,sigma,1);      %angle
        slope=tan(angle);               %slope
        y=slope*(x-x0)+y0;              %point slpe form of line side 4
    end
    
     plot(x,y,'k')                      %plot
     xlim([a b])                        %x limits
     ylim([a b])                        %y limits
     hold on;                           %hold on for graph
  
end