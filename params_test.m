% -----
% 提供火箭參數結構體的函數
% -----
function params = params_test()
% m0: 初始質量[kg]
% Isp: 比衝[秒]
% g0: 地面重力加速度[m/s^2]
% FT: 推力[N]
% t_burn: 燃燒時間[秒]
% At: 噴管喉部面積[m^2]
% Area: 機體截面積[m^2]
% CLa: 升力斜率[每弧度]
% CD: 阻力係數[-]
% length_GCM: 從發動機樞軸點到重心的向量[m] (3x1)
% length_A: 從發動機樞軸點到空氣動力中心的向量[m] (3x1)
% IXX, IYY, IZZ: 慣性矩[kgm^2]
% IXXdot, IYYdot, IZZdot: 慣性矩的時間變化率[kgm^2/秒]
% azimth, elevation: 初始姿態的方位角和仰角[度]
% VWH: 水平座標系中的風速(上-東-北) [m/s] (3x1)
% pos0: 發射點在慣性座標系中的位置（上-東-北)[m] (3x1)
% vel0: 發射點在慣性座標系中的速度[m/s] (3x1)
% omega0: 機體坐標系中作用於機體的角速度[弧度/秒] (3x1)
params = struct( ...
    'Isp_sea_level', 240, ... % 'Isp', 200, ...
    'g0', 9.7879, ...
    'm_ignition' , 13456.9, ... % 初始火箭質量
    'm_cutoff' , 3657.1, ... % 停止推進時火箭質量
    't_burn' , 140, ...
    'Isp_vacuum', 280, ...% 終端比衝
    'Pressure_sea_level', 101325, ...% 海平面氣壓
    'Pressure_vaccume', 0, ...% 真空氣壓
    'At', 0.01, ...
    'Area', 0.18, ...
    'CLa', 10, ...
    'length_GCM', [-1.5; 0; 0], ...
    'length_A', [-0.20; 0; 0], ...
    'Reference_length_m', 1.1, ...
    'Reference_area_m2', 0.55^2 * pi, ...
    'azimth', 45, ...
    'elevation', 90, ...
    'pos0', [0.0; 0.0; 0.0], ...
    'vel0', [0.0; 0.0; 0.0], ...
    'velb0', [0.0; 0.0; 0.0], ...
    'omega0', [0.0; 0.0; 0.0] ...
);
end
