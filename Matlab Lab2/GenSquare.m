function y = GenSquare(sampleRate,frequency,duration)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t = 0:(1/sampleRate):duration;
%a =1;
y =square(2*pi*frequency*t);

%plot(t,y);
%title('Square Wave')
%xlabel('time')
%ylabel('signal value')

end

