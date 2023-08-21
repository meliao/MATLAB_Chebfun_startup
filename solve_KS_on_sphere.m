%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD CHEBFUN PACKAGE
addpath(fullfile(cd,'chebfun')), savepath


ic = spherefun(@(x, y, z) sin(x) + cos(z));
alpha = 1.;
time = [0 1];


S = KS_operator(ic, alpha, time)

uout = spinsphere(S, 128, 1e-02);

