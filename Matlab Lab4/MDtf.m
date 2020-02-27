M = 1;
b = (4);
k = (5);
F = 1;
t = (0:0.01:3);
P = tf(F,[M,b,k]);
Kp = 300; % proportional term
Ki = 300; % intergral term
Kd = 50; % derivative term

s = tf('s'); % s
C = Kp+(Ki/s)+Kd*s; % controller
Ys = C*P;
Rs = 1+C*P;
OL = C*P; % open loop 
CL = minreal(Ys/Rs); % close loop
bode(P);


%step(P,t)
% the bandwidth of P is 1.68 rad/s 
% the initial value is 0 and the final sate value is 0.2

% the step responce shows that the final value is 0.2 
% the rise time is 1.28s
% the settle time is 2.08s

step(CL,t)
% the step responce shows that there is off shooting
% the off shootings causes oscillation which adds more time for the signal
% to stabilize