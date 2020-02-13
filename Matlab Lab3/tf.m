
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


%step(sys) 
bode(sys)