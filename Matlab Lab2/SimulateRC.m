function SimulateRC(R,C,sampleRate,frequency,duration)

h = 1/sampleRate; % h is samplerate changed to time
t = 0:h:duration; 
Vs = square(2*pi*frequency*t); % make a square wave
Vc = CapacitorVoltage(R,C,Vs,h); % get Vc


figure
hold on
%Plot Vc and Vs
plot(t,Vs,'r');
plot(t,Vc,'b');

end

