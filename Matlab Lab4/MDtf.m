M = 1;
b = (4);
k = (5);
F = 1;
t = (0:0.1:3);
P = tf(F,[M,b,k]);

bode(P);
step(P,t)
% the bandwidth of P is 1.68 rad/s 
% the initial value is 0 and the final sate value is 0.2

% the step responce shows that the final value is 0.2 
% the rise time is 1.28s
% the settle time is 2.08s