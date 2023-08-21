function D = KS_operator(IC_func, alpha, time)
    % Returns an object of class spinopsphere. 
    % The operator represents the differential operator that shows up on the right hand side of the KS equation
    % NOTE this code does not work because spinsphere only works with operators whose linear part is a constant times
    % the Laplacian. 
    % See the following documentation:
    % https://www.chebfun.org/docs/guide/guide19.html
    D = spinopsphere(time);
    D.lin = @(u) -alpha * biharm(u) - lap(u) ;
    D.nonlin = @(u) - u.*diff(u);
    D.init = IC_func;
end