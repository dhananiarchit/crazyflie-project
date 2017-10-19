run('init_inner_PD_c')
initial_xidot = [1,0.15,0]';
initial_eta = [0.08; 0; 0]';
max_ang_ref = pi/8;

% C0mputes the saturation bounds for the thrust PD controller
sat_lim = 0.1;        % difference between thrust and omega saturation
omega_min_lim = 0;    % rad/s
omega_max_lim = 2500; % rad/s
Tm = 4.*k.^2.*omega_min_lim;
Tp = 4.*k.*omega_max_lim.^2;
T_min_lim = Tm + (Tp - Tm) * sat_lim;
T_max_lim = Tp - (Tp - Tm) * sat_lim;
tau_max_lim = 1e-5;
tau_min_lim = -1e-5;