%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOAD CHEBFUN PACKAGE
addpath(fullfile(cd,'chebfun')), savepath


ic = spherefun(@(x, y, z) sin(x) + cos(z));

