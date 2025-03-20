function [WaterDensity, WaterMu, WaterCP, WaterK, WaterPr, WaterBeta] = WaterProperties(T_input)
    % Temperature (°C) from table
    T = [5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100];
    
    % Corresponding properties from table
    density = [1000 999.7 999.1 998.2 997.1 995.7 994 992.2 990.2 988 985.7 983.2 980.6 977.8 974.9 971.8 968.6 965.3 961.9 958.4]; % kg/m^3
    mu = [0.001519 0.001307 0.001138 0.001002 0.000895 0.0007977 0.0007196 0.0006533 0.0005963 0.0005471 0.0005042 0.0004666 0.0004334 0.000404 0.0003779 0.0003545 0.0003335 0.0003145 0.0002964 0.0002802]; % Pa.s
    cp = [4200 4188 4184 4183 4183 4183 4183 4182 4182 4181 4182 4183 4184 4187 4190 4194 4199 4204 4210 2042]; % J/kg.K
    k = [0.5576 0.5674 0.5769 0.5861 0.5948 0.603 0.6107 0.6178 0.6244 0.6305 0.636 0.641 0.6455 0.6495 0.653 0.6562 0.6589 0.6613 0.6634 0.02506]; % W/m.K
    Pr = [11.44 9.642 8.253 7.152 6.263 5.534 4.929 4.422 3.994 3.628 3.315 3.045 2.81 2.605 2.425 2.266 2.125 2 1.888 0.9996]; % Prandtl Number
    beta = [0.00001135 0.00008743 0.0001523 0.000209 0.0002594 0.0003051 0.000347 0.0003859 0.0004225 0.0004572 0.0004903 0.0005221 0.0005528 0.0005827 0.0006118 0.0006402 0.0006682 0.0006958 0.000723 0.002881]; % 1/K
    
    % Perform interpolation
    WaterDensity = interp1(T, density, T_input, 'linear');
    WaterMu = interp1(T, mu, T_input, 'linear');
    WaterCP = interp1(T, cp, T_input, 'linear');
    WaterK = interp1(T, k, T_input, 'linear');
    WaterPr = interp1(T, Pr, T_input, 'linear');
    WaterBeta = interp1(T, beta, T_input, 'linear');
end
