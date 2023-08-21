unzip('https://github.com/chebfun/chebfun/archive/master.zip')
movefile('chebfun-master', 'chebfun'), addpath(fullfile(cd,'chebfun')), savepath
% The commented line runs the package's tests to make sure everything runs correctly.
% It takes ~ 5 min to run on my macbook
% chebtest 