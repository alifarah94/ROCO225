function Vc = CapacitorVoltage(R,C,Vs,h)
% this function uses the euler equation to get Vc

Vc(1) = 0;
Vs_length = length(Vs)-1;

for n = 1:Vs_length
    
    Vc(n+1) = Vc(n) + h * (1/(R*C)) * (Vs(n) - Vc(n));
end

end

