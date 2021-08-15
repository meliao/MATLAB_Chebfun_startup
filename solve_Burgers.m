%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD CHEBFUN PACKAGE

addpath('~/projects/emulator/src/MATLAB/chebfun');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SET UP TIME / SPACE GRIDS

TMAX = 1;
X_BOUNDS = [-pi pi];

% These two parameters are what control solution accuracy. Finer spatial grid
% and smaller step sizes give more accurate solutions
N_X_POINTS = 1024;
STEP_SIZE = 1/1000;

n_tsteps = TMAX / STEP_SIZE + 1;
time_grid = linspace(0, TMAX, n_tsteps);
x_grid = linspace(X_BOUNDS(1), X_BOUNDS(2), N_X_POINTS);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GENERATE RANDOM ICs, SOLVE NLS, RECORD RESULTS

IC = chebfun(@(x) -sin(x), X_BOUNDS, 'trig'); % Initial data is sin(x) on [-pi, pi]

% This is the viscosity parameter. As it approaches 0, the shocks
% in the solution are more pronounced and you need a smaller time step
NU = 1/100;

% This calls the function defined in Burgers_operator.m
Burgers_op = Burgers_operator(IC, NU, X_BOUNDS, time_grid);

% This is the function call that solves the PDE. If you're using the
% desktop verion of MATLAB, it'll play a video of the solution developing over
% time. To disable the video, add the arguments 'plot', 'off'
soln = spin(Burgers_op, N_X_POINTS, STEP_SIZE);


plot(soln(1), 'red'); % Initial condition plotted in red
hold on;
plot(soln(n_tsteps), 'blue'); % Final solution plotted in blue
