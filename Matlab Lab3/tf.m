
numerator = 10; % numerator for the tf function
% a,b,c,d are the denominators for the tf function
a = 1;
b = 10;
c = 40;
d = 40;


sys = tf(numerator,[a b c d]); % using the tf function to calculate

% inital value: t = 0, s = infinity
% inital value= 10/(infinity^3 + 10*infinity^2 + 40*infinity + 40)
% initial value = 10/ (infinity) = 0


% final value: t = infinity, s = 0
% final value = 10/(0^3 + 10*0^2 + 40*0 + 40)
% final value = 10/(40) = 1/4



bode(sys)
% to find the bandwidth frequency from the bode plot you make a line from
% the y-intercept all the way to the graphs line. the x-axis value of the
% meeting point is the value of the bandwidth frequency.
% y-intercept= -15dB, Bandwidth frequency= 1.38 rads/s


% step(sys) 
% The system rise time is the time it takes for the system to get from 10%
% to 90% 
% rise time = 1.59s


%what is the significance of the gain and phase margins?
% the gain is the ammount of energy needed from the frequency to go to -3dB
% to 0 dB when the system is a 180deg
% The phase margin is defined as the change in open-loop phase shift
% required to make a closed-loop system unstable



cl = 10 * sys/(1+10*sys);
% bode(cl)

% gain = 20*log(gain)
% 31.1 dB = 20*log(gain)
% (31.1/20) = log(gain)
% 10^(31.1/20) = gain
% gain = 35.9

% giving a system a value above a gain margin will extend the time that the
% system will be stable again.

% giving a system a value below the gain system will make the system
% unstable.
