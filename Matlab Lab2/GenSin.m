function GenSin(sampleRate,frequency,duration)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


t = 0:(1/sampleRate):duration;
a =1;
y=a*sin(2*pi*frequency*t);

plot(t,y);
%sound(y,frequency)
end

