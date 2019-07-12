%This program is fiber simulation for the Anderson-Clayton 

clear all                            %clearing program
close all
clc

kx=64;
[x]=linspace(0,1, kx+1);            %linespaceing for x
[y]=linspace(0,1, kx+1);            %linespacing for y

n=200;                             %sample size
a=-1;                                %lower bound for uniform distribution
b=2;                                %upper bound for uniform distribution



    for i=1:n
                    
        x1=unifrnd(a,b,1);          %x distance from origin
        y1=unifrnd(a,b,1);          %y distance from origin  
        x2=unifrnd(a,b,1);          %x distance from origin
        y2=unifrnd(a,b,1);          %y distance from origin  
        x=[x1,x2];                  %x vector of point 1, 2
        y=[y1,y2];                  %y vector of point 1, 2
        
        slo=(y2-y1)/(x2-x1);            % slope of crimp
th=atan(slo);                   % angle of crimp
c=cos(th);                      % cosine of crimp angle
s=sin(th);                       % sine of crimp angle

% A=-slo/(2*pi);
A=unifrnd(0,.1);                 % Amplitude or height of crimp
A2=unifrnd(0,.1);

K=(x2-x1)/c;                    
% how many
t=0:0.01:1;                     % number of cycles 
freq=unifrnd(12,15);            % frequency or x lenght of crimp
freq2=unifrnd(12,15);

f=K * (c * t - (A * sin(freq*pi*t)))+(A2*cos(freq2*pi*t)) + x1;
g=K * (s * t + (A * sin(freq*pi*t)))+(A2*cos(freq2*pi*t)) + y1;

plot(f,g,'k');

% plot([x1,x2],[y1,y2],'k');
        
    
     xlim([0 1])                    % x limits
     ylim([0 1])                    % y limits
     hold on;                       % hold on for graph 
  
                      
  
    end