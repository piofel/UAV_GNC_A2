% State-space MAV models

% Global variables used:
% x_trim is the trimmed state,
% u_trim is the trimmed input

% Continuous models
[A,B,C,D] = linmod('uav_trim_chap5_lik',x_trim,u_trim);

E1 = [...
0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0;...
0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0;...
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1;...
0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0;...
0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0;...
];
E2 = [...
0, 1, 0, 0;...
0, 0, 1, 0;...
];
% x_lat = [v p r phi psi]'
A_lat = E1 * A * E1';
% u_lat = [delta_a delta_r]'
B_lat = E1 * B * E2';

% x_lon = [u w q theta pd]'
A_lon = TODO
% u_lon = [delta_e delta_t]'
B_lon = TODO

% y_lat = chi
C_lat = TODO  % podpowiedź: złożyć z odpowiednich elementów macierzy C
% y_lon = [Va h]'
C_lon = TODO  % podpowiedź: złożyć z odpowiednich elementów macierzy C